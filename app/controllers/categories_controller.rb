class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @dishes = @category.dishes
  end
end
