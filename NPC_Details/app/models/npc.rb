require 'nameGenerator.rb'
require 'weightedSelection.rb'

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
    self.eyecolor = randomColor(self.race.eyeColor) if self.eyecolor == ""
    self.skincolor = randomColor(self.race.skinColor) if self.skincolor == ""
    self.haircolor = randomColor(self.race.hairColor) if self.haircolor == ""
    self.name = randomName if self.name ==""
    self.alignment = randomAlignment if self.alignment ==""
    self.characterClass = randomClass if self.characterClass ==""
  end

  def randomAlignment
    align = {LG: 4, NG: 5, CG: 3, LN: 5, N: 6, CN: 4, LE: 3, NE: 4, CE: 2}
    WeightedSelection.choose(align)
  end

  def randomClass
    classes = {Alchemist: 9297, Barbarian: 46312, Bard: 29889, Cleric: 46486, Druid: 1550, 
      Fighter: 44832, Monk: 1550, Paladin: 4483, Ranger: 29889, Rogue: 69468, Sorcerer: 6947, 
      Wizard: 9297, Adept: 63636, Aristrocrat: 6259, Commoner: 375559, Expert: 101818, Warrior: 152728}
      WeightedSelection.choose(classes)
  end

  def randomName
    self.name = NameGenerator.new.generateName(self.race.name, self.sex[0])
  end
  def randomColor(colors)
    sel = colors.each_with_object ({}) {|item, h| h[item[0]] = item[1][:chance]}
    WeightedSelection.choose(sel)
  end

  def randomSex
    return "Male" if rand(2) == 0
    "Female"
  end

  def randomAge
    setAgeCatigory = {ven: 176, old: 216, mid: 269, adult: 339}
    selected = WeightedSelection.choose(setAgeCatigory)
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
    WeightedSelection.choose(levels)
  end

  def randomHeight
    self.sex == "Male"? self.race.maleBaseHeight + @tempMod : self.race.femaleBaseHeight + @tempMod
  end

  def randomWeight
    self.sex == "Male"? self.race.maleBaseWeight + (@tempMod*self.race.weightMod) : self.race.femaleBaseWeight + (@tempMod*self.race.weightMod)
  end

  def ageCatigory
    case self.age
    when (0..self.race.adultAge-1)
      return "child"
    when (self.race.adultAge..self.race.middleAge-1)
      return "adult"
    when (self.race.middleAge..self.race.oldAge-1)
      return "middle age"
    when (self.race.oldAge..self.race.venerableAge-1)
      return "old age"
    when (self.race.venerableAge..self.race.maxAge-1)
      return "venerable"
    end
  end


end