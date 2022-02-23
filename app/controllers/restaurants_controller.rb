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
    if @restaurant.save != true
      render "new"
    else
      redirect_to restaurant_path(@restaurant)
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end