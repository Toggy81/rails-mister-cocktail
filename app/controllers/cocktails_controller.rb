class CocktailsController < ApplicationController
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
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      # @cocktail.save!
      redirect_to cocktail_show_path(@cocktail)
    else
      # @cocktail = Cocktail.new(cocktail_params)
      redirect_to cocktails_new_path
    end
    # no need for app/views/cocktails/create.html.erb
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
