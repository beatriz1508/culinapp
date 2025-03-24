
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
    @user_photos = current_user.photos.with_attached_image
  end

  def upload_photo
    if params[:photos].present?
      params[:photos].each do |photo|
        current_user.photos.create(image: photo)
      end
      redirect_to user_root_path, notice: "Foto enviada com sucesso!"
    else
      redirect_to user_root_path, alert: "Erro ao enviar foto."
    end
  end

end
