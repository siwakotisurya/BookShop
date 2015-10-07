class BooksController < ApplicationController
  
  layout "book_shops"
  def index
  end

  def show
  end

  def new
    @book_shop = find_book_shop_params
    @book = @book_shop.books.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private def find_book_shop_params
    BookShop.find(params[:book_shop_id])
  end
end
