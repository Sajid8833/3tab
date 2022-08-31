class RemoveColumnFromCars < ActiveRecord::Migration[7.0]
  def change
    remove_column :cars, :car_id
    rename_column :cars, :car_name, :name
    rename_column :cars, :car_model, :model
    rename_column :cars, :car_detail, :details
    rename_column :cars, :car_condition, :condition
    rename_column :cars, :car_image, :image
  end
end
