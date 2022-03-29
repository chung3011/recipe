# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  context 'Associations' do
    it 'has many dish ingredients' do
      association = described_class.reflect_on_association(:dish_ingredients)
      expect(association.macro).to eq :has_many
    end
  end
end
