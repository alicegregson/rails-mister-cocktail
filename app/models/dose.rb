class Dose < ApplicationRecord
# A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.
 validates :description, presence: true
 belongs_to :cocktail
 belongs_to :ingredient
 validates :cocktail_id, uniqueness: { scope: :ingredient_id }

end
