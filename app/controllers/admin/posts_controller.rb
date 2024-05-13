class Admin::PostsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @users = 
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to admin_dashboards_index_2_path
  end
end
