class BookShopsController < ApplicationController
  
  layout "book_shops"
  #before_filter :require_login, only: [:index,:new,:create,:edit,:update,:destroy]
  def index
    @bookshops = BookShop.all
  end

  def new
    @shop = BookShop.new
  end

  def create
    @shop = BookShop.new(set_database_field)
    binding.pry
    if @shop.save
      flash[:msg] = "Bookshop Store in a database please check your email"
      EmailNotification.delay(run_at: 5.minutes.from_now).notify(@shop)
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
    if @shop.destroy
      flash[:sucess]="#{@shop.shop_name}  Book Shop Sucessfuly Deleted"
      redirect_to book_shops_path
    end
  end

  private def set_database_field
    params.require(:book_shop).permit(:shop_name, :shop_location, :phone_number, :email_address, :image)
  end
end
