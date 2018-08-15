class RestaurantsController < ApplicationController


  def index
     @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
   @restaurant = Restaurant.new

  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path(@restaurant)
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
  end

  private


  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end


private

def review_params
  params.require(:review).permit(:content)
end

end

