class UserItemsController < ApplicationController
	
	def create
    user=current_user
    @item=Item.find(params[:item_id])
    if UserItem.create(user_id: user.id, item_id:@item.id)
      redirect_to item_path(@item)
      flash = '予約を送信しました。メールをご確認ください。'
    else
      redirect_to root_url
    end
	end

end
