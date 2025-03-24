class WorldsController < ApplicationController
  before_action :set_world, only: [:show]

  def show
    @tasks = @world.tasks.order(:created_at)

    last_completed_review = current_user.reviews.includes(:task).where(task: {world_id: @world.id}).order(created_at: :desc).limit(1).take
      if last_completed_review.present?
        @next_task = @tasks.where("created_at > ?", last_completed_review.task.created_at).order(:created_at).limit(1).take
      else
        @next_task = @tasks.first
      end

    @paths = Path.all
    @tasks_comleted = []
    @tasks.last.review_ids.each do |review_id|
      review = Review.find(review_id)
      if review.user_id == current_user.id
        @tasks_comleted << review_id
      end

    end
    # @reviews = Review.all

    # raise
  end

  def destroy
    # @world = World.find(params[:id])
    # @world.destroy
  end


  private

  def set_world
    @world = World.find(params[:id])
  end

  def world_params
    params.require(:world).permit(:title, :done)
  end
end
