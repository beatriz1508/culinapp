class ProfilesController < ApplicationController
  def show
    @badges = current_user.reviews.joins(task: :world).group("worlds.id").count
  end
end
