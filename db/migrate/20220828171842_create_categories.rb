class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.integer :category_id
      t.string :category_type
      t.string :car_name
      t.string :car_model
      t.string :car_detail

      t.timestamps
    end
  end
end
