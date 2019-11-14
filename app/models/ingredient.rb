class Ingredient < ApplicationRecord
# An ingredient must have a unique name.
  validates :name, presence: true, uniqueness: true
  has_many :doses
end
