class User::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def edit
    @user = User.find(params[:id])
  end

  def quit
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      flash[:notice]="You have updated user successfully."
      redirect_to user_user_path(current_user)
    else
      render:edit
    end
  end


  private

  def user_params
      params.require(:user).permit(:screen_name, :profile_image_url)
  end
end
