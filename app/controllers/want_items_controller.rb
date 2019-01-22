class WantItemsController < ApplicationController

  def create
    user=current_user
    @item=Item.find(params[:item_id])
    if WantItem.find_or_create_by(user_id: user.id, item_id:@item.id)
      redirect_to item_path(@item)
      flash = '"欲しい！"に追加しました！'
    else
      redirect_to root_url
    end
  end

  def destroy
    user=current_user
    @item=Item.find(params[:item_id])
    if WantItem.where(user_id: user.id, item_id: @item.id).destroy_all
      redirect_to item_path(@item)
      flash = '"試した！"から削除しました'
    else
      redirect_to root_url
    end
  end


end
