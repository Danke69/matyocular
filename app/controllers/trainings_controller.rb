class TrainingsController < ApplicationController
  def show
    @training = Training.find(params[:id])
  end

  def index
    @training = Training.new
    @lists = current_user.lists
  end

  def new
    @training = Training.new(training_date: Date.today)
    @lists = current_user.lists
    @menus = current_user.training_menus
  end

  def new_menu
    @training = Training.new(training_params)
    @training.training_date = Date.today
    @list = List.find(training_params[:list_id])
    @menus = @list.training_menus
  end

  def new_detail
    @training = Training.new
    @list = List.find(params[:training][:list_id])
    @training_menu = TrainingMenu.find(params[:training][:training_menu_id])

  end

  def create
    @training = Training.new(training_params)
    @training.user_id = current_user.id
    @training.save
    redirect_to trainings_path
  end

  def destroy
    @training = Training.find(params[:id])
    @training.destroy
    redirect_to trainings_path
  end

  def update
    @training = Training.find(params[:id])
    @training.update(training_params)
    redirect_to trainings_path
  end

  private

  def training_params
    params.require(:training).permit(:menu, :training_date, :list_id, :item, :training_menu_id, :weight, :body)
  end

end
