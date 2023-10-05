class AddImageToEnginers < ActiveRecord::Migration[7.0]
  def change
    add_column :enginers, :image, :string
  end
end
