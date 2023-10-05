class CreateMaintenances < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenances do |t|
      t.string :engine_type
      t.string :maintenance_type
      t.references :enginer, foreign_key: true, on_delete: :cascade
      t.references :city, foreign_key: true
      t.references :material, foreign_key: true
      t.string :maintenance_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
