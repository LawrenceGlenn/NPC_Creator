class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class Dice

  def roll(num, die)
    sum = num.times { rand(die)+1 }
  end

end