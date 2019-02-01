class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save!
    redirect_to users_url             # This should be replaced with an actual home_page url
  end


  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
