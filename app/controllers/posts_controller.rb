class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to posts_path
  end



  def destroy
    post = Post.find(params[:id])
    user = post.user
    post.destroy
    redirect_to user_path(user)
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
