class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.integer :car_id
      t.string :car_name
      t.string :car_model
      t.string :car_detail
      t.string :seller_name
      t.integer :issue_year
      t.string :car_condition
      t.text :car_image

      t.timestamps
    end
  end
end
