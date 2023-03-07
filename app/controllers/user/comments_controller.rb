class User::CommentsController < ApplicationController

  def create
    store_information = StoreInformation.find(params[:store_information_id])
    comment = current_user.comments.new(comment_params)
    comment.store_information_id = store_information.id
    comment.save
    redirect_to user_store_information_path(store_information)
  end


  def index
  end

  def show
  end

  def edit
  end

  private

  def comment_params
    params.require(:comment).permit(:comments,:rate)
  end
end
