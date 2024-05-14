class Admin::PostsController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!

  def index
    @posts = Post.all
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to admin_dashboards_index_2_path
  end
end
