class ItemsController < ApplicationController
  before_action :move_to_index
  before_action :variable_definition, only: [:show, :edit, :update, :destroy]
  before_action :move_to_show, only: :edit


  def index
    @other = Item.where.not(user_id: current_user.id).order("created_at DESC")
    @q = @other.ransack(params[:q])
    @items = @q.result
  end

  def search
    @items = Item.search(params[:id])
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
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item.id)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to user_path(current_user.id)
  end

  private
  def  move_to_index
    unless user_signed_in?
      redirect_to users_path
    end
  end

  def variable_definition
    @item = Item.find(params[:id])
  end

  def move_to_show
    if @item.user.id != current_user.id
      render :show
    end
  end

  def item_params
    params.require(:item).permit(:item_image, :category_id, :sales_name, :price, :evaluation_id, :comment_title, :comment_detail).merge(user_id: current_user.id)
  end

end