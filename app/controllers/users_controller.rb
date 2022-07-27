class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @items = current_user.items
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

  def user_params
    params.require(:user).permit(:email, :nickname, :word, :profile_image)
  end
end
