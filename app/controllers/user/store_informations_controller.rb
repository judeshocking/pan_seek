class User::StoreInformationsController < ApplicationController

  def index
    @store_information = StoreInformation
    @store_informations = StoreInformation.all.page(params[:page]).per(4)
    @store_informations = @store_informations.where('address LIKE ? OR name LIKE ?', "%#{params[:search]}%","%#{params[:search]}%") if params[:search].present?
  end

  def show
    @store_information = StoreInformation.find(params[:id])
    @store_comments = StoreComment
    @store_comment = StoreComment.new
    @user = current_user
  end


  private

  def store_information_params
    params.require(:store_information).permit(:text)
  end

end