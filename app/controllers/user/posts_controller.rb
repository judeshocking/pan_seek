class User::PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to user_posts_path
    else
      flash[:post_created_error] = "投稿が正しく保存されていません"
      redirect_to new_user_post_path
    end
  end

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end


  private
  def post_params
    params.require(:post).permit(:title,:text)
  end
end
