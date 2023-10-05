class CreateEnginers < ActiveRecord::Migration[7.0]
  def change
    create_table :enginers do |t|
      t.string :name
      t.text :descripcion

      t.timestamps
    end
  end
end
