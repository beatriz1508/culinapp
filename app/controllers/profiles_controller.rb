
class ProfilesController < ApplicationController

  def ranking
    # Recipes Ranking (based on reviews)
    @users = User
    .left_joins(:reviews)                                   # Join users with their reviews
    .group('users.id')                                      # Group by user to get review counts
    .select('users.*, COUNT(reviews.id) AS reviews_count')  # Select users and count their reviews
    .order('reviews_count DESC')

     # Badges Ranking (based on badge logic)
    @users_badges_ranking = User.all.sort_by do |user|
    user.reviews.joins(task: :world).group("worlds.id").count.select { |_world_id, review_count| review_count == 5 }.size
    end.reverse

    @current_user_recipe_rank = @users.index(current_user) + 1
    @current_user_badge_rank = @users_badges_ranking.index(current_user) + 1
   end

  def show
    @badges = current_user.reviews.joins(task: :world).group("worlds.id").count
  end

  def update
    current_user.photos.attach(params[:user][:photos]) if params[:user][:photos].present? # Adiciona sem apagar as antigas

    redirect_to user_root_path, notice: "Foto enviada com sucesso!"
  end

  private

  def user_params
    params.require(:user).permit(photos: [])
  end

end
