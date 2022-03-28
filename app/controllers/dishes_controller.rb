# frozen_string_literal: true

class DishesController < ApplicationController
  def show
    @dish = Dish.find(params[:id])
  end
end
