class User::PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to user_posts_index_path
    else
      flash[:post_created_error] = "商品情報が正しく保存されていません"
      redirect_to user_posts_new_path
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  private
  def post_params
    params.require(:post).permit(:text,:rate)
  end
end
