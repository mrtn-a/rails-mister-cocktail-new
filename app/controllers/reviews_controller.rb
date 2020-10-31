class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    # we need `cocktail_id` to associate dose with corresponding cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review.cocktail = @cocktail
    @dose = Dose.new
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render template: 'cocktails/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:name, :content, :rating, :cocktail_id)
  end
end
