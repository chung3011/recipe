# frozen_string_literal: true

class Ingredient < ApplicationRecord
  has_many :dish_ingredients, dependent: :destroy
end
