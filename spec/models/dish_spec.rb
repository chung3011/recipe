# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Dish, type: :model do
  context 'Associations' do
    it 'belongs to Category' do
      association = described_class.reflect_on_association(:category)
      expect(association.macro).to eq :belongs_to
    end

    it 'has many dish ingredients' do
      association = described_class.reflect_on_association(:dish_ingredients)
      expect(association.macro).to eq :has_many
    end
  end

  context 'Search dishes' do
    let!(:dish) { create(:dish) }

    it 'can get dishes by name' do
      expect(described_class.get_dishes(dish.name)).to include(dish)
    end
  end
end
