class Cocktail < ApplicationRecord
# A cocktail must have a unique name.
validates :name, presence: true, uniqueness: true
has_many :doses, dependent: :destroy
has_many :ingredients, through: :doses
end
