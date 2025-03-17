class TasksController < ApplicationController

  def show
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:title, :ingredients, :steps, :done)
  end
end

#sóumcomentarioprakaue
