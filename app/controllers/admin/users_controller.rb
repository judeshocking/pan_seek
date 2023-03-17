class Admin::UsersController < ApplicationController
  def index
    @users = User.page(params[:page])
  end

  def edit
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:email,:screen_name,:encrypted_password,:is_deleted)
  end
end
