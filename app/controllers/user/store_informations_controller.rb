class User::StoreInformationsController < ApplicationController

  def index
    @store_information = StoreInformation.page(params[:page]).per(3)
    @store_informations = StoreInformation.all
  end

  def show
    @store_information = StoreInformation.find(params[:id])
    @store_comment = StoreComment.new
    @user = current_user
  end


  private

  def store_information_params
    params.require(:store_information).permit(:text)
  end

end