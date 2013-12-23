class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all    
  end

  def show
    
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
    @ingredients = @menu_item.ingredients.all
    @ingredient = @menu_item.ingredients.new
  end

  def create
    @menu_item = MenuItem.find(params[:id])
    @ingredient = Ingredient.new(ingredient_params)

    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ingredient }
      else
        format.html { render action: 'new' }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end
