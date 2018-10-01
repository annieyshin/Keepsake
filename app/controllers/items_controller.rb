class ItemsController < ApplicationController
  def index
     @items = Item.all
  end

  def show
      @item = Item.find(params[:id])
    end

    def new
      @item = Item.new
    end

    def create
      @item = Item.new(item_params)
      if @item.save
        flash[:alert] = "Item successfully added!"
        redirect_to items_path(@item)
      else
        flash[:notice] = "Your item was not added."
        render :new
      end
    end

    def edit
      @item = Item.find(params[:id])
    end

    def update
      @item= Item.find(params[:id])

      if @item.update(item_params)
        redirect_to item_path
      else
        render :edit
      end
    end

    def destroy
      @item = Item.find(params[:id])
      @item.destroy
      redirect_to items_path
    end

    private
    def item_params
      params.require(:item).permit(:name, :cost, :description)
    end



end
