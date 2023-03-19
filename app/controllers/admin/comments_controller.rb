class Admin::CommentsController < ApplicationController
  def index
    @comments = Comment.page(params[:page])
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    flash[:comment_destroy] = "投稿は削除されました"
    redirect_to admin_comments_path
  end
end
