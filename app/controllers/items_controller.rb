class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all.order("created_at DESC")
  end

  def search
    @search_results = Item.search(params[:search])
    session[:search_results] = request.url
  end

  def search_advanced
    @advanced_search_results = Item.search_advanced(params[:search_author],params[:search_title],params[:search_isbn],params[:search_publisher],params[:search_language],params[:search_description],params[:select_category])
    session[:search_results] = request.url
  end


  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  #def item_params
  #  params.require(:item).permit(:name, :description, :isbn, :language, :state, :date_pub, :item_img_file_name, :item_img_content_type, :item_img_file_size, :item_img_updated_at)
  #end
  def item_params
    params.require(:item).permit(:name,:description,:isbn,:language,:state,:date_pub,:item_img)
  end

end
