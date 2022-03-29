# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DishIngredient, type: :model do
  context 'Associations' do
    it 'belongs to Dish' do
      association = described_class.reflect_on_association(:dish)
      expect(association.macro).to eq :belongs_to
    end

    it 'belongs to Ingredient' do
      association = described_class.reflect_on_association(:ingredient)
      expect(association.macro).to eq :belongs_to
    end
  end
end
