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

  def friends
    if user_signed_in?
      @hogas = []
      current_user.want_items&.each do |hoga|
        @hogas << hoga
      end
      current_user.user_items&.each do |hoga|
        @hogas << hoga
      end
      current_user.following&.each do |hoge|
        hoge.want_items&.each do |hoga|
          @hogas << hoga
        end
        hoge.user_items&.each do |hoga|
          @hogas << hoga
        end
      end
      current_user.followers&.each do |hoge|
        hoge.want_items&.each do |hoga|
          @hogas << hoga
        end
        hoge.user_items&.each do |hoga|
          @hogas << hoga
        end
      end
    end
  end

end
