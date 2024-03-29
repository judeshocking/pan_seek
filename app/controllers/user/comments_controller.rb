class User::CommentsController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    @comment = current_user.comments.new(comment_params)
    @comment.post_id = post.id
    if @comment.save
      redirect_to user_post_path(params[:post_id])
    else
      flash[:comment_error] = "コメントが正しく保存されていません"
      redirect_to user_post_path(params[:post_id])
    end
  end

  def destroy
    comment = Comment.find_by(params[:id])
    comment.destroy
    redirect_to user_posts_path(params[:post_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end


end
