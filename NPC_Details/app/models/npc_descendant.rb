class NpcDescendant < ApplicationRecord
  belongs_to :parent, :class_name => 'Npc'
  belongs_to :child, :class_name => 'Npc'
end
