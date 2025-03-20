class TasksController < ApplicationController

  def show
    @task = Task.find(params[:id])
    @ingredients = Ingredient.where(task: @task.id)
  end

  def update
    task = Task.find(params[:id])
    next_task = task.world.tasks.where(done: false).first
    next_task.update!(done: true)
    redirect_to completed_task_path(task)
  end

  def completed
    @task = Task.find(params[:id])
    @review = Review.new
    # redirect_to task_reviews_path
  end

  

  private

  def task_params
    params.require(:task).permit(:title, :ingredients, :steps, :done)
  end
end
