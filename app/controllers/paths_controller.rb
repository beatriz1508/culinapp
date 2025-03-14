class PathsController < ApplicationController
  before_action :set_path, only: [:edit, :update, :show]

  def new
  end

  def create
  end

  def edit
  end

  def update
    if @path.update(path_params)
      redirect_to root_path, notice: "Path atualizado com sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def index
  end

  def show
  end

  def destroy
  end

private

  def set_path
    @path = Path.find(params[:id])
  end

  def path_params
    params.require(:path).permit(:title, :description)
  end
end
