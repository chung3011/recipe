# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @dishes = Dish.all.includes(:category)
    @categories = Category.all
  end
end
