class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update]

  def edit
  end

  def create
    @task = Task.find(params[:task_id])
    @review = Review.new
    @review.user = current_user
    @review.task = @task
    # raise
    @review.save
    redirect_to edit_review_path(@review)
  end

  def update
    if @review.update(review_params)
      redirect_to world_path(@review.task.world)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def index
    @reviews = Review.all
    @reviews = Review.order(rating: :desc)
  end

  def like
    @review = Review.find(params[:review_id])
    # @review.increment!(:rating)
    @review.rating += 1
    @review.save
    redirect_to reviews_path
  end

  private

  def review_params
    params.require(:review).permit(:feedback, :photo, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
  end

end
