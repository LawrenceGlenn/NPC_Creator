class Race < ApplicationRecord
  has_many :npcs
  serialize :eyeColor, Hash
end
