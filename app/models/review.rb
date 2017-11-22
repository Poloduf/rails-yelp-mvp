class Review < ApplicationRecord
  ##validations

  belongs_to :restaurant
  validates :rating, numericality: { allow_nil: false, only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :content, presence: true

  ##méthodes

  def index
    # @review = Review.all
  end

  def show
    @review = Review.find(params[:restaurant_id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = review.new(review_params)
    @review.save
    redirect_to reviews_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:name, :address, :category)
  end

  def set_review
  end
end


end
