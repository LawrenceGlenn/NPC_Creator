class Race < ApplicationRecord
  has_many :npcs
  serialize :eyeColor, Hash
  serialize :skinColor, Hash
  serialize :hairColor, Hash
end
