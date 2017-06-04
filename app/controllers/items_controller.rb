class ItemsController < ApplicationController
  
def index
      @items = Item.all.order("created_at DESC")
end



  def search
  	@search_results = Item.search(params[:search])
  end

  def search_advanced
    @search_results = Item.search_advanced(params[:search_author],params[:search_title],params[:search_isbn],params[:search_publisher])
  end


  def show
  end

   private

  def item_params
    params.require(:item).permit(:name,:description,:isbn,:language,:state,:date_pub,:item_img)
  end

end
