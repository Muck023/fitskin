class ItemsController < ApplicationController
  before_action :move_to_toppage
  def index
  end
  def new
  end

  private
  def move_to_toppage
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
