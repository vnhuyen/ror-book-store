class ReviewsController < ApplicationController
  # before_action :find_book
  before_action :authorized

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.book_id = 1 #@book.id
    @review.user_id = current_user.__id__

    respond_to do |format|
      if @review.save
        notice = "review was successfully created."
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_review
    @review = review.find(params[:id])
  end

  def find_book
    @book = review.find(params[:book_id])
  end

  # Only allow a list of trusted parameters through.
  def review_params
    params.require(:review).permit(:comment)
  end
end
