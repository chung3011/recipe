# frozen_string_literal: true

class Dish < ApplicationRecord
  belongs_to :category
  has_many :dish_ingredients, dependent: :destroy

  scope :get_dishes, ->(name){where("name like ?", "%#{name}%")}
end
