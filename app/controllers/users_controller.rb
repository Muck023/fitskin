class UsersController < ApplicationController
  before_action :authenticate_user!, only: :show
  before_action :move_to_show, only: :edit

  def index
  end

  def show
    @user = User.find(params[:id])
    @items = Item.where(user_id: params[:id])
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  private

  def  move_to_show
    @user = User.find(params[:id])
    unless current_user.id == @user.id
      redirect_to action: :show
    end
  end

  def user_params
    params.require(:user).permit(:email, :nickname, :word, :profile_image)
  end
end
