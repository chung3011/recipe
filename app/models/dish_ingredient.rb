# frozen_string_literal: true

class DishIngredient < ApplicationRecord
  belongs_to :dish
  belongs_to :ingredient
end
