# frozen_string_literal: true

FactoryBot.define do
  factory :dish_ingredient do
    dish
    ingredient
    measurement { '1' }
  end
end
