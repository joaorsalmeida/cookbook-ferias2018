class RecipesController < ApplicationController
  def show
    id = params[:id]
    @recipe = Recipe.find(id)
  end
end
