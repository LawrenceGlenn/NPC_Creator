class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class Dice

  def self.roll(num, die)
    (1..num).inject(0) { |sum| sum + rand(die)+1}
  end

end