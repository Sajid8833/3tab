class CreateMakes < ActiveRecord::Migration[7.0]
  def change
    create_table :makes do |t|
      t.integer :make_id
      t.string :make_type

      t.timestamps
    end
  end
end
