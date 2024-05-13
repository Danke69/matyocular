class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
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
