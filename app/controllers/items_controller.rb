class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.new(item_params)
    item.save
  end

  private
  def item_params
    params.require(:item).permit(:name, :description, :barnd, :condition, :status, :shipping_cost, :shipping_date, :price)
  end
end
