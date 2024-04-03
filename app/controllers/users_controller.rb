class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @post = @user.post
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @uesr = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path(@user.id)
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :goal)
  end
end
