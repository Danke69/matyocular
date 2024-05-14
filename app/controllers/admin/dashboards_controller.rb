class Admin::DashboardsController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!

  def index
    @users = User.all
  end


  def new
    @list = List.new
  end
  
  def new_2
    @training = Training.new
    @lists = List.all
    @list = List.find(training_params[:list_id])
    @menus = @list.training_menus
  end
  
  def create
    
  end

end
