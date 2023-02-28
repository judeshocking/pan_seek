class Admin::StoreInformationsController < ApplicationController
  def index
  end

  def edit
  end

  def new
    @store_information = StoreInformation.new
  end

  def create
    @store_information = StoreInformation.new(item_params)
    if @store_information.save
      redirect_to admin_store_informations_index_path
    else
      flash[:item_created_error] = "商品情報が正しく保存されていません"
      redirect_to admin_store_informations_new_path
    end
  end

  private
  def store_information_params
    params.require(:store_information).permit(:image,:name,:address,:access,:business_hours,:eat_in_space,:regular_holiday)
  end
end
