class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    # Fetch the cocktail from DB
    cocktail = Cocktail.find(params[:cocktail_id])
    # Fetch the ingredient from DB
    #ingredient = Ingredient.find(params[:dose][:ingredient_id])
    # Create a new dose from params
    @dose = Dose.new(dose_params)
    # Link the cocktail and the dose
    @dose.cocktail = cocktail
    # Link the ingredient and the dose
    #@dose.ingredient = ingredient
    # Save the dose
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
