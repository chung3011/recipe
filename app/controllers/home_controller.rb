# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @dishes = Dish.all.includes(:category)
    @categories = Category.all
  end

  def search
    @search_dishes = Dish.get_dishes(params[:name])
  end
end
