class ListsController < ApplicationController

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    @list.save
    redirect_to new_training_menu_path
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to trainings_path
  end

  private

  def list_params
    params.require(:list).permit(:part)
  end

end
