# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CategoriesController, type: :request do
  describe 'GET #show' do
    subject { get category_path(id: category.id) }

    let!(:category) { create(:category, :with_dishes) }

    it 'show category detail' do
      expect(subject).to eq 200
      expect(response.body).to include(category.name)
      category.dishes.each do |dish|
        expect(response.body).to include(dish.name)
        expect(response.body).to include(dish.description)
      end
    end
  end
end
