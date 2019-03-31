class ItemsController < ApplicationController
  def index
    @q = Item.ransack(params[:q])
    @items = @q.result(distinct: true)
    @categories = Category.all
    @brands = Brand.all
  end

	def show
		@item = Item.find(params[:id])
	end

  def search
    @q = Item.search(search_params)
    @items = @q.result(distinct: true)
  end

  private
  def search_params
    params.require(:q).permit!
  end

end