class Npc < ApplicationRecord
  belongs_to :race
  before_create :set_random_values

  @tempMod = 0

  def set_random_values
    @tempMod = Dice.roll(self.race.modNum, self.race.modDie)
    self.sex = randomSex if self.sex == ""
    self.level = randomLevel if self.level == nil
    self.height = randomHeight if self.height == nil
    self.weight = randomWeight if self.weight == nil
    self.age = randomAge if self.age == nil
    self.eyecolor = randomEyecolor if self.eyecolor == nil
  end

  def randomEyecolor
    sel = self.race.eyeColor.each_with_object ({}) {|item, h| h[item[0]] = item[1][:chance]}
    choose_weighted(sel)
  end
  def randomSex
    return "Male" if rand(2) == 0
    "Female"
  end

  def randomAge
    ageCatigory = {ven: 176, old: 216, mid: 269, adult: 339}
    selected = choose_weighted(ageCatigory)
    case selected
    when :adult
      return rand(self.race.middleAge-self.race.adultAge)+self.race.adultAge
    when :mid
      return rand(self.race.oldAge-self.race.middleAge)+self.race.middleAge
    when :old
      return rand(self.race.venerableAge-self.race.oldAge)+self.race.oldAge
    when :ven
      return rand(self.race.maxAge-self.race.venerableAge)+self.race.venerableAge
    end
  end

  def randomLevel
    levels = { }
    val=1
    (20).downto(1) do |key|
      levels[key] = val
      val = val*2
    end
    choose_weighted(levels)
  end

  def randomHeight
    self.sex == "Male"? self.race.maleBaseHeight + @tempMod : self.race.femaleBaseHeight + @tempMod
  end

  def randomWeight
    self.sex == "Male"? self.race.maleBaseWeight + (@tempMod*self.race.weightMod) : self.race.femaleBaseWeight + (@tempMod*self.race.weightMod)
  end

  def choose_weighted(weighted)
    sum = weighted.inject(0) { |sum, item_and_weight| sum += item_and_weight[1] }
    target = rand(sum)
    weighted.each do |item, weight|
      return item if target <= weight
      target -= weight
    end
  end

end