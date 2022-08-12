class UsersController < ApplicationController
  before_action :authenticate_user!, only: :show
  before_action :move_to_show, only: :edit

  def index
  end

  def show
    @user = User.find(params[:id])
    @items = Item.where(user_id: params[:id]).order("created_at DESC")
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

  def follow
    @user = User.find(params[:user_id])
    current_user.follow(@user)
    redirect_to user_path(@user)
end

def unfollow
    @user = User.find(params[:user_id])
    current_user.stop_following(@user)
    redirect_to user_path(@user)
end

def follow_list
  @user = User.find(params[:user_id])
end

def follower_list
  @user = User.find(params[:user_id])
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
