class TopController < ApplicationController
	def index
		@item = Item.first
	end
end
