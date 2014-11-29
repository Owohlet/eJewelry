class DashboardController < ApplicationController
  def corner
    @user_id = session["warden.user.user.key"][0][0]
    @user = User.find(@user_id)
    @shops = @user.shops
  end
end
