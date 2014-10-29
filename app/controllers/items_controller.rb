class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :set_room  #, only: [:show, :edit, :update, :destroy]
  # GET /items
  # GET /items.json
  def index
    if @room
      @items = @room.items
      @room_name = @room.name
    else
      @items = Item.all
      @room_name  = "all items"
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = @room.items.find(params[:id])
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
    @item = @room.items.new(item_params)
    respond_to do |format|
      if @item.save
        format.html { redirect_to @room, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: [@room,@item] }
        format.js
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
        format.html { redirect_to @room, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: [@room, @item] }
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
      format.html { redirect_to @room, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end
    def set_room
      @room = Room.find(params[:room_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:room_id, :asset_id, :qanak, :state_id, :code, :person_id, :room_id)
    end
end
