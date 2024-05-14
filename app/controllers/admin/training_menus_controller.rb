class Admin::TrainingMenusController < ApplicationController
  layout 'admin'
  
  def new
    @menu = TrainingMenu.new
    @lists = List.all
  end  
  
  def create
    @menu = TrainingMenu.new(training_menu_params)
    @menu.save
    redirect_to admin_dashboards_path
  end  
  
  private

  def training_menu_params
    params.require(:training_menu).permit(:item, :list_id)
  end  
  
end
