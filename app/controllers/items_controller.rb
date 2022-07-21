class ItemsController < ApplicationController
  def index
    @user = User.all
  end
  def new
  end

  private

end
