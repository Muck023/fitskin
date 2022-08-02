class ItemsController < ApplicationController
  before_action :move_to_index

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end
  
  def create
    @item = Item.create(item_params)
    if @item.save
      redirect_to root_path
     else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  private
  def  move_to_index
    unless user_signed_in?
      redirect_to users_path
    end
  end

  def item_params
    params.require(:item).permit(:item_image, :category_id, :sales_name, :price, :evaluation_id, :comment_title, :comment_detail).merge(user_id: current_user.id)
  end

end