class Npc < ApplicationRecord
  belongs_to :race
  before_create :set_random_values

  @tempMod = 0
  def nickname
    %Q("#{self[:nickname]}")
  end

  def set_random_values
    @tempMod = Dice.roll(self.race.modNum, self.race.modDie)
    self.sex = randomSex if self.sex == ""
    self.level = randomLevel if self.level == nil
    self.height = randomHeight if self.height == nil
    self.weight = randomWeight if self.weight == nil
  end

  def randomSex
    return "Male" if rand(2) == 0
    "Female"
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
