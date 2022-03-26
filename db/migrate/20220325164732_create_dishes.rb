# frozen_string_literal: true

class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
