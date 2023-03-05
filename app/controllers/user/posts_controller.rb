class User::PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: user_root_path)
    end
  end


  def index
    @post = Post.all
  end

  def show
  end

  def edit
  end

  private
  def post_params
    params.require(:post).permit(:text,:rate,:store_information_id,:user_id)
  end
end
