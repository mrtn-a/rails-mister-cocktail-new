class CocktailsController < ApplicationController
  def index
    if params[:query]
      @cocktails = Cocktail.where("name ILIKE ?", "%#{params[:query]}%")
      if @cocktails.count.zero?
        @no_cocktails_found = "Couldn't find anything, check out all the cocktails below"
        @cocktails = Cocktail.all
      end
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @review = Review.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end

