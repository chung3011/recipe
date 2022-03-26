# frozen_string_literal: true

require 'active_record/fixtures'

tables = %i[
  categories
  dishes
  ingredients
  dish_ingredients
]

ActiveRecord::FixtureSet.create_fixtures 'db/fixtures', tables
