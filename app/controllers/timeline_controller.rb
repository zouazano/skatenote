class TimelineController < ApplicationController
	def index
		@hogas = []
    UserItem.all.each do |hoge|
      @hogas << hoge
    end
    WantItem.all.each do |hoge|
    	@hogas << hoge
    end
	end
end
