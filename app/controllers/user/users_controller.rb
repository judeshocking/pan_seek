class User::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def quit
  end


  private

  def user_params
      params.require(:user).permit(:screen_name, :profile_image_url, :sex)
  end
end
