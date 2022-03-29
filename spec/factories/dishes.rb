# frozen_string_literal: true

FactoryBot.define do
  factory :dish do
    sequence(:name) { |n| "dish#{n}" }
    category
    description { 'description' }
    cooking { 'cooking' }
  end
end
