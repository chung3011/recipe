# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    sequence(:name) { |n| "category#{n}" }

    trait :with_dishes do
      after(:build) do |category|
        category.dishes << FactoryBot.create_list(:dish, 2, category: category)
      end
    end
  end
end
