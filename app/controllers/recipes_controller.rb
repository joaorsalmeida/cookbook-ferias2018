class RecipesController < ApplicationController
  def show
    id = params[:id]
    @recipe = Recipe.find(id)
  end

  def new
    @recipe = Recipe.new
    @cuisines = Cuisine.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:success] = 'Receita cadastrada com sucesso'
      redirect_to recipe_path(@recipe)
    else
      @cuisines = Cuisine.all
      flash[:error] = 'Não foi possível cadastrar sua receita'
      render 'new'
    end

  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :recipe_type, :cuisine_id, :difficulty,
                                  :cook_time, :cook_method, :ingredients, :photo)
  end
end
