class AddMakesToCars < ActiveRecord::Migration[7.0]
  def change
    add_reference :cars, :make, null: false, foreign_key: true
  end
end
