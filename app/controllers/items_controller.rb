class ItemsController < ApplicationController
  
def index
      @items = Item.all.order("created_at DESC")
end



  def search
  	@search_results = Item.search(params[:search])
  end

  def show
  end

   private

  def item_params
    params.require(:item).permit(:name,:description,:isbn,:language,:state,:date_pub,:item_img)
  end

end
