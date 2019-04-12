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

  def create
    @q = Item.ransack(params[:q])
    @items = @q.result(distinct: true)
    @categories = Category.all
    @brands = Brand.all
    @category = Category.find(params[:q]["category_id_eq"])
    @brand = Brand.find(params[:q]["brand_id_eq"])

    @item = Item.create(item_params)
    if @item.save
      redirect_to top_index_path
      flash = 'お問い合せが完了しました。'
    else
      render 'new'
    end
  end

  def update
    
  end

  def search
    @q = Item.search(search_params)
    @items = @q.result(distinct: true)
  end

  private
  def search_params
    params.require(:q).permit!
  end

  def item_params
    params.require(:item).permit!
  end

end