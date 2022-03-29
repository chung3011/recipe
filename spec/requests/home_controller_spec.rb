# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController, type: :request do
  describe 'GET #index' do
    let!(:dishes) { create_list(:dish, 2) }
    let!(:categories) { create_list(:category, 2) }

    it 'can access root path' do
      get root_path
      expect(response).to have_http_status(:success)
    end

    it 'can show all dishes' do
      get root_path
      dishes.each do |dish|
        expect(response.body).to include(dish.name)
      end
    end

    it 'can show all categories' do
      get root_path
      categories.each do |category|
        expect(response.body).to include(category.name)
      end
    end
  end

  describe 'GET #search' do
    let!(:dish) { create(:dish) }

    it 'can get dishes by name' do
      get search_path, params: { name: dish.name }
      expect(response.body).to include(dish.name)
    end
  end
end
