class Npc < ApplicationRecord
  before_create :set_random_values

  def set_random_values
    self.sex = randomSex
    self.level = randomLevel if self.level == nil
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

  def choose_weighted(weighted)
    sum = weighted.inject(0) { |sum, item_and_weight| sum += item_and_weight[1] }
    target = rand(sum)
    weighted.each do |item, weight|
      return item if target <= weight
      target -= weight
    end
  end

end
