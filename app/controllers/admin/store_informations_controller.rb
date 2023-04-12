class Admin::StoreInformationsController < ApplicationController
  def index
    @store_informations = StoreInformation.all
  end

  def edit
    @store_information = StoreInformation.find(params[:id])
  end

  def show
    @store_information = StoreInformation.find(params[:id])
  end

  def new
    @store_information = StoreInformation.new
  end

  def create
    @store_information = StoreInformation.new(store_information_params)
    if @store_information.save
      redirect_to admin_store_informations_path
    else
      flash[:store_created_error] = "店舗情報が正しく保存されていません"
      redirect_to admin_store_informations_path
    end
  end


  def update
    @store_information = StoreInformation.find(params[:id])
    if @store_information.update(store_information_params)
      redirect_to admin_store_information_path(@store_information)
    else
      flash[:store_created_error] = "店舗情報が正しくに保存されていません"
      redirect_to admin_store_information_path(@store_information)
    end
  end


  private
  def store_information_params
    params.require(:store_information).permit(:store_image_url,:name,:address,:access,:business_hours,:eat_in_space,:regular_holiday)
  end
end
