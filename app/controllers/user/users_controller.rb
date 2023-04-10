class User::UsersController < ApplicationController

  before_action :reject_invalid_user, only: [:create]

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).per(3)
  end

  def edit
    @user = User.find(params[:id])
  end

  def quit
    @user = current_user
  end

  def update
    @user = current_user
      if @user.update(user_params)
        redirect_to user_user_path(@user.id)
      else
        render 'edit'
      end
  end

  def out
    @user = current_user
    @user.update(is_deleted: true)
      reset_session
      redirect_to root_path
  end


  private

  def user_params
      params.require(:user).permit(:screen_name, :profile_image)
  end
end
