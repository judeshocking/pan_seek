class User::CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to user_comments_show_path
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
