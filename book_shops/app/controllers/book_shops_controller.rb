class BookShopsController < ApplicationController
  
  layout "book_shops"
  def index
    @bookshops = BookShop.all
  end

  def show
  end

  def new
    @shop = BookShop.new
  end

  def create
    @shop = BookShop.new(set_database_field)
    if @shop.save
      EmailNotification.notify(@shop).deliver!
      render "new"
    else

       render "new"
    end
  end

  def edit
    @shop = BookShop.find(params[:id])
  end

  def update
    @shop = BookShop.find(params[:id])
    if @shop.update(set_database_field)
    end
  end

  def destroy
    @shop = BookShop.find(params[:id])
    @shop.destroy
  end

  private def set_database_field
    params.require(:book_shop).permit(:shop_name, :shop_location, :phone_number, :email_address)
  end
end
