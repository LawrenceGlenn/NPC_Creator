require 'nameGenerator.rb'
require 'weightedSelection.rb'

class Npc < ApplicationRecord
  belongs_to :race
  belongs_to :city, optional: true
  has_many :npc_descendants, :foreign_key => :parent_id
  has_many :children, :through => :npc_descendants, :source => :child
  before_create :set_random_values

  @tempMod = 0
  @@jobsFile = YAML.load_file("#{::Rails.root.to_s}/app/models/concerns/jobs.yml").uniq
  @@secretsFile = YAML.load_file("#{::Rails.root.to_s}/app/models/concerns/secrets.yml").uniq

  def set_random_values
    @tempMod = Dice.roll(self.race.modNum, self.race.modDie)
    self.sex = randomSex if self.sex == nil or self.sex == ""
    self.level = randomLevel if self.level == nil
    self.height = randomHeight if self.height == nil
    self.weight = randomWeight if self.weight == nil
    self.age = randomAge if self.age == nil
    self.eyecolor = randomColor(self.race.eyeColor) if self.eyecolor == nil or self.eyecolor == ""
    self.skincolor = randomColor(self.race.skinColor) if self.skincolor == nil or self.skincolor == ""
    self.haircolor = randomColor(self.race.hairColor) if self.haircolor == nil or self.haircolor == ""
    self.name = randomName if self.name == nil or self.name ==""
    self.alignment = randomAlignment if self.alignment == nil or  self.alignment ==""
    self.rpgclass = randomClass if self.rpgclass == nil or self.rpgclass ==""
    self.occupation = randomOccupation if self.occupation == nil or self.occupation ==""
    self.secret = randomSecret if self.secret == nil or self.secret ==""
  end

  def randomSecret
    secrets = {}
      @@secretsFile.each do |secretType|
        secretType[1].each do |secret|
          secrets["I ".concat(secret)] = 1 if secret
        end
      end
    WeightedSelection.choose(secrets)
  end

  def randomOccupation
    jobs = {}
    @@jobsFile.each do |job|
      baseChance = 1000000/job[1]
      jobs["head ".concat(job[0])] = baseChance
      jobs["apprentice ".concat(job[0])] = baseChance*job[2]
    end
    jobs[:begger] = 30000
    jobs["day laborer"] = 90781
    jobs[:peddler] = 60000
    jobs[:criminal] = 10000
    jobs[:farmer] = 490000
    WeightedSelection.choose(jobs)
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
    (20).downto(0) do |key|
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