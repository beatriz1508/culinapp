class ProfilesController < ApplicationController

  def ranking
    @users = User.all
  end

end
