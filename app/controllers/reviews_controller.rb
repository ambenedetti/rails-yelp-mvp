class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = @restaurant.review
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
