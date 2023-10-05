class AddEquipmentTypeToEnginers < ActiveRecord::Migration[7.0]
  def change
    add_reference :enginers, :equipment_type, null: false, foreign_key: true
  end
end
