class Dish < ApplicationRecord
  belongs_to :category
  has_many :dish_ingredients
end
