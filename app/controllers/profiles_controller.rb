class ProfilesController < ApplicationController

  def ranking
    @users = User
    .left_joins(:reviews)                                   # Join users with their reviews
    .group('users.id')                                      # Group by user to get review counts
    .select('users.*, COUNT(reviews.id) AS reviews_count')  # Select users and count their reviews
    .order('reviews_count DESC')
  end

end
