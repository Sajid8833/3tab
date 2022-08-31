class AddCategoryToCars < ActiveRecord::Migration[7.0]
  def change
    add_reference :cars, :category, null: false, foreign_key: true
  end
end
