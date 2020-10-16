class GroceyItemsController < ApplicationController
  before_action :set_grocey_item, only: [:show, :edit, :update, :destroy]
  before_action :set_grocery_list, only: [:create, :index]

  # GET /grocey_items
  # GET /grocey_items.json
  def index
    @grocey_items = GroceyItem.all
  end

  # GET /grocey_items/1
  # GET /grocey_items/1.json
  def show
  end

  # GET /grocey_items/new
  def new
    @grocey_item = GroceyItem.new
  end

  # GET /grocey_items/1/edit
  def edit
  end

  # POST /grocey_items
  # POST /grocey_items.json
  def create
    @grocey_item = GroceyItem.new(grocey_item_params)
    @grocey_item.grocery_list = @grocery_list

    respond_to do |format|
      if @grocey_item.save
        format.html { redirect_to @grocery_list, notice: 'Grocey item was successfully created.' }
        format.json { render :show, status: :created, location: @grocey_item }
      else
        format.html { render :new }
        format.json { render json: @grocey_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grocey_items/1
  # PATCH/PUT /grocey_items/1.json
  def update
    respond_to do |format|
      if @grocey_item.update(grocey_item_params)
        format.html { redirect_to @grocery_list, notice: 'Grocey item was successfully updated.' }
        format.json { render :show, status: :ok, location: @grocey_item }
      else
        format.html { render :edit }
        format.json { render json: @grocey_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grocey_items/1
  # DELETE /grocey_items/1.json
  def destroy
    @grocey_item.destroy
    respond_to do |format|
      format.html { redirect_to grocey_items_url, notice: 'Grocey item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grocey_item
      @grocey_item = GroceyItem.find(params[:id])
    end

    def set_grocery_list
      @grocery_list = GroceryList.find(params[:grocery_list_id])
    end

    # Only allow a list of trusted parameters through.
    def grocey_item_params
      params.require(:grocey_item).permit(:item, :qty, :grocery_list_id)
    end
end
