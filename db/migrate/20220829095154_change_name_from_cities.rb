class ChangeNameFromCities < ActiveRecord::Migration[7.0]
  def change
    remove_column :cities, :city_id
    rename_column :cities, :city_name, :name
  end
end
