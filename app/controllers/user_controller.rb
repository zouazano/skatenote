class UserController < ApplicationController
  def index
  
  end

  def want_items
    @user = User.find(params[:user_id])
  end

  def followings
    @user = User.find(params[:user_id])
  end

  def followers
    @user = User.find(params[:user_id])
  end

  def show
  	@user = User.find(params[:id])
    if user_signed_in? and current_user.id == @user.id
      redirect_to controller: :tried, action: :index
    end
    
    
  end
end
