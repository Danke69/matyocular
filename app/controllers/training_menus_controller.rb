class TrainingMenusController < ApplicationController
  def new
    @menu = TrainingMenu.new
    @lists = current_user.lists
  end

  def create
    @menu = TrainingMenu.new(training_menu_params)
    @menu.user = current_user
    @menu.save
    redirect_to trainings_path
  end

  def destroy
    training = TrainingMenu.find(params[:id])
    training.destroy
    redirect_to trainings_path
  end



  private

  def training_menu_params
    params.require(:training_menu).permit(:item, :list_id)
  end

end
