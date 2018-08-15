class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurants = Restaurant.find(params[:restaurant_id])
    review = Review.new(review_params)
    review.restaurants = @restaurant
    review.save
    red
  end

private

def review_params
  params.require(:review).permit(:content)
end

end
