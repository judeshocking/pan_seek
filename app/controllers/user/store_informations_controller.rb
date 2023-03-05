class User::StoreInformationsController < ApplicationController

  def index
    @store_information = StoreInformation.page(params[:page]).per(3)
    @store_informations = StoreInformation.all
  end

  def show
    @store_information = StoreInformation.find(params[:id])
    @posts = @store_information.posts.includes(:user).all
    @post  = @store_information.posts.build(user_id: current_user.id) if current_user
  end

  def create
  end

  private

  def store_information_params
    params.require(:store_information).permit(:text,:rate)
  end

end
