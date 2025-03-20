class ReviewsController < ApplicationController

  def create
    @task = Task.find(params[:task_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.task = @task
    @review.save
    raise
  end

  private

  def review_params
    params.require(:review).permit( :feedback, :img_url)
  end

end
