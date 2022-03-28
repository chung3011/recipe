class AddImageToDishes < ActiveRecord::Migration[7.0]
  def change
    add_column :dishes, :image, :string
  end
end
