class UserItemsController < ApplicationController
	def create
    user=current_user
    item=Item.find(params[:post_id])
    if UserItem.create(user_id: user.id,item_id:post.id)
    redirect_to search_index_path
    else
      redirect_to root_url
    end
	end

end
