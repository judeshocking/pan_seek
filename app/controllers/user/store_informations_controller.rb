class User::StoreInformationsController < ApplicationController

  def index
    @store_information = StoreInformation.page(params[:page]).per(3)
    @store_informations = StoreInformation.all
  end

  def show
  end


end
