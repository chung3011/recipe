# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'Associations' do
    it 'has many dishes' do
      association = described_class.reflect_on_association(:dishes)
      expect(association.macro).to eq :has_many
    end
  end
end
