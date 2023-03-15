class User::StoreCommentsController < ApplicationController


  def create
    store_information = StoreInformation.find(params[:store_information_id])
    store_comment = current_user.store_comments.new(store_comment_params)
    store_comment.store_information_id = store_information.id
    store_comment.save
    redirect_to user_store_information_path(store_information)
  end

  def destroy
    StoreComment.find(params[:id]).destroy
    redirect_to user_store_information_path(params[:store_information_id])
  end

  private

  def store_comment_params
    params.require(:store_comment).permit(:store_comment,:store_rate)
  end
end
