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
    @posts = Post.all
    @posts = @posts.where('title LIKE ?', "%#{params[:search]}%") if params[:search].present?
  end


  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
       redirect_to user_post_path(post.id)
    else
      flash[:post_update_error] = "変更が正しく保存されていません"
      redirect_to edit_user_post_path
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    flash[:post_destroy] = "投稿は削除されました"
    redirect_to user_posts_path
  end


  private
    def post_params
      params.require(:post).permit(:title,:text,:image,:rate).merge(user_id: current_user.id)
    end
end
