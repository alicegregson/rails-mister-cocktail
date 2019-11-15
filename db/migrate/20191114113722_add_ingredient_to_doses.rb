class AddIngredientToDoses < ActiveRecord::Migration[5.2]
  def change
    add_reference :doses, :ingredient, null: false, foreign_key: true
  end
end
