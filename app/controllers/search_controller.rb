class SearchController < ApplicationController
  def index
    @q = Item.ransack(params[:q])
    @items = @q.result(distinct: true)
    @categories = Category.all
    @brands = Brand.all
    #@category = Category.find(params[:q]["category_id_eq"])
    #@brand = Brand.find(params[:q]["brand_id_eq"])
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
