class UserItemsController < ApplicationController

  def new
    @user=current_user
    @item=Item.find(params[:item_id])
    @user_item = @user.user_items.build
  end

  def create
    @user=current_user
    @item=Item.find(params[:item_id])
    @user_item = @user.user_items.build(user_item_params)
    if UserItem.where(user_id: @user.id, item_id:@item.id).create(user_item_params)
      redirect_to item_path(@item)
      flash = '"試した！"に追加しました！'
    else
      redirect_to root_url
    end
  end

  def destroy
    user=current_user
    @item=Item.find(params[:item_id])
    if UserItem.where(user_id: user.id, item_id: @item.id).destroy_all
      redirect_to item_path(@item)
      flash = '"試した！"から削除しました'
    else
      redirect_to root_url
    end
  end


  private

  def user_item_params
    params[:user_item].permit(:value, :comment, :image, :name, :size, :shop)
  end


end

