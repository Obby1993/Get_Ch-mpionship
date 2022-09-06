class ReviewsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.user = @user

    respond_to do |format|
      if @review.save
        format.html { redirect_to user_path(@user) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html {render "user/show", status: :unprocessable_entity}
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
