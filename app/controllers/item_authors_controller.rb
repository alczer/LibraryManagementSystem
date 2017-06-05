class ItemAuthorsController < ApplicationController
  before_action :set_item_author, only: [:show, :edit, :update, :destroy]

  # GET /item_authors
  # GET /item_authors.json
  def index
    @item_authors = ItemAuthor.all
  end

  # GET /item_authors/1
  # GET /item_authors/1.json
  def show
  end

  # GET /item_authors/new
  def new
    @item_author = ItemAuthor.new
  end

  # GET /item_authors/1/edit
  def edit
  end

  # POST /item_authors
  # POST /item_authors.json
  def create
    @item_author = ItemAuthor.new(item_author_params)

    respond_to do |format|
      if @item_author.save
        format.html { redirect_to @item_author, notice: 'Item author was successfully created.' }
        format.json { render :show, status: :created, location: @item_author }
      else
        format.html { render :new }
        format.json { render json: @item_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_authors/1
  # PATCH/PUT /item_authors/1.json
  def update
    respond_to do |format|
      if @item_author.update(item_author_params)
        format.html { redirect_to @item_author, notice: 'Item author was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_author }
      else
        format.html { render :edit }
        format.json { render json: @item_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_authors/1
  # DELETE /item_authors/1.json
  def destroy
    @item_author.destroy
    respond_to do |format|
      format.html { redirect_to item_authors_url, notice: 'Item author was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_author
      @item_author = ItemAuthor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_author_params
      params.require(:item_author).permit(:item_id, :author_id)
    end
end
