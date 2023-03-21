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
    @user = current_user
      if @user.update(user_params)
        flash[:update] = "You have updated user info successfully."
        redirect_to user_user_path(@user.id)
      else
        render 'edit'
      end
  end


  private

  def user_params
      params.require(:user).permit(:screen_name, :profile_image)
  end
end
