class AddCookingToDishes < ActiveRecord::Migration[7.0]
  def change
    add_column :dishes, :cooking, :string
  end
end
