class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update]

  def show
  end

  def create
    @task = Task.find(params[:task_id])
    @review = Review.new
    @review.user = current_user
    @review.task = @task
    # raise
    @review.save
    redirect_to review_path(@review)
  end

  def update
    if @review.update(review_params)
      redirect_to world_path(@review.task.world)
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit( :feedback, :img_url)
  end

  def set_review
    @review = Review.find(params[:id])
  end

end
