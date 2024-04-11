class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.user_id = current_user
    @post.save!
    redirect_to posts_path
  end

  def show
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:post)
  end
end
