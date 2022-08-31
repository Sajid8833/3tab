class ChangeNameFromMakes < ActiveRecord::Migration[7.0]
  def change
    remove_column :makes, :make_id
    rename_column :makes, :make_type, :name
  end
end
