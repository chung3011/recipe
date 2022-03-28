# frozen_string_literal: true

class DishesController < ApplicationController
  def show
    @dish = Dish.find(params[:id])
    @suggest_dishes = @dish.category.dishes.where.not(id: @dish.id)
  end
end
