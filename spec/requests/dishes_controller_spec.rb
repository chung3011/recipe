# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DishesController, type: :request do
  describe 'GET #show' do
    subject { get dish_path(id: dish.id) }

    let!(:dish) { create(:dish) }

    it 'show dish detail' do
      expect(subject).to eq 200
      expect(response.body).to include(dish.name)
      expect(response.body).to include(dish.cooking)
      expect(response.body).to include(dish.category.name)
    end
  end
end
