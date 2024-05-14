class Admin::TrainingListsController < ApplicationController
  layout 'admin'

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to new_admin_training_menu_path
  end

  private

  def list_params
    params.require(:list).permit(:part)
  end

end
