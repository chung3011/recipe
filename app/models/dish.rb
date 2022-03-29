# frozen_string_literal: true

class Dish < ApplicationRecord
  belongs_to :category
  has_many :dish_ingredients, dependent: :destroy

  scope :get_dishes, ->(name) { where('name like ?', "%#{sanitize_sql_like(name)}%") }
end
