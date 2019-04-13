class UserController < ApplicationController
	def index
		
	end

	def want_items
		@user = User.find(params[:user_id])
	end

	def show
		@user = User.find(params[:id])
	end
end
