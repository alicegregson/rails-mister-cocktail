class CocktailsController < ApplicationController
  # before_action :set_cocktail, only [:show,]

  # before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    cocktail = Cocktail.new(cocktail_params)
    if cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  # def edit
  #   @cocktail = Cocktail.find(params[:id])
  # end

  # def update
  # @cocktail = Cocktail.find(params[:id])
  #   cocktail.update(cocktail_params)
  #   redirect_to cocktail_path(cocktail)
  # end

  # def destroy
  #   @cocktail = Cocktail.find(params[:id])
  #   cocktail.delete
  #   redirect_to cocktails_path
  # end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
