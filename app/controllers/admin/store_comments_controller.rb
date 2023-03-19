class Admin::StoreCommentsController < ApplicationController
  def index
    @store_comments = StoreComment.page(params[:page])
  end

  def show
    @store_comment = StoreComment.find(params[:id])
  end

  def destroy
    store_comment = StoreComment.find(params[:id])
    store_comment.destroy
    flash[:store_comment_destroy] = "投稿は削除されました"
    redirect_to admin_store_comments_path
  end
end
