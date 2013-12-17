class IngredientsController < ApplicationController
  # before_action :set_ingredients

  def index
    @ingredients = Ingredient.all    
  end

  def show
    
  end

  def edit
    
  end

  private

  def set_ingredients
    @menu_item = MenuItem.find(params[:id]) 
  end

end
