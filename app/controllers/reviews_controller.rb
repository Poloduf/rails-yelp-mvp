class ReviewsController < ApplicationController
  def index
    # @review = Review.all
  end

  def show
    @review = Review.find(params[:restaurant_id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
  end
end
