class Admin::UsersController < ApplicationController
  def index
    @users = User.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to admin_user_path
    else
     flash[:notice] = "会員情報が正しく保存されませんでした"
     redirect_to edit_admin_user_path(@user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:email,:screen_name,:is_deleted)
  end
end
