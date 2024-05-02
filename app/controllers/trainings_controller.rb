class TrainingsController < ApplicationController
  def show
    @trainings = Training.all
  end

  def index

  end

  def new
    @training = Training.new(training_date: Date.today)
    @lists = List.all
    @menus = TrainingMenu.all
  end

  def new_2
    @training = Training.new(training_params)
    @training.training_date = Date.today
    @list = List.find(training_params[:list_id])
    
    @menus = @list.training_menus
  end

  def create
    @training = Training.new(training_params)
    @training.save
    redirect_to training_path(@training)
  end

  def destroy
    training = Training.find(params[:id])
    training.destroy
    redirect_to training_path(training)
  end

  private

  def training_params
    params.require(:training).permit(:menu, :training_date, :list_id)
  end
end
