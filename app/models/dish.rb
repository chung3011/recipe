# frozen_string_literal: true

class Dish < ApplicationRecord
  belongs_to :category
  has_many :dish_ingredients, dependent: :destroy
end
