class ItemsController < ApplicationController
  def index
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

  private
  def item_params
    params.require(:item).permit(:item_image, :category_id, :sales_name, :price, :evaluation_id, :comment_title, :comment_detail).merge(user_id: current_user.id)
  end

end