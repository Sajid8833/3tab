class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.integer :city_id
      t.string :city_name

      t.timestamps
    end
  end
end
