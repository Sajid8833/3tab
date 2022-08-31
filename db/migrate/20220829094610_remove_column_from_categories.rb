class RemoveColumnFromCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :category_id
    remove_column :categories, :car_detail
    remove_column :categories, :car_model
    rename_column :categories, :category_type, :category
    rename_column :categories, :car_name, :name

  end
end
