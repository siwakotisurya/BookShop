class BooksController < ApplicationController
  
  layout "book_shops"
  def index
    @book_shop = find_book_shop_params
    @books = @book_shop.books.all
  end

  def show
  end

  def new
    @book_shop = find_book_shop_params
    @book = @book_shop.books.new
  end

  def create
    @book_shop = find_book_shop_params
    @book = @book_shop.books.new(set_db_field)
    if @book.save
      flash[:message] = "books sucessfully saved"
      redirect_to book_shop_books_path(@book_shop) 
    else
      flash[:message] = "Sorry something goes wrong cannot saved"
      redirect_to book_shop_books_path(@book_shop)
    end

  end

  def edit
     @book_shop = find_book_shop_params
     @book = @book_shop.books.find(params[:id])
  end

  def update
    @book_shop = find_book_shop_params
    @book = @book_shop.books.find(params[:id])
    if @book.update(set_db_field) 
    end
  end

  def delete
  end

  def destroy
    @book_shop = find_book_shop_params
    @book = @book_shop.books.find(params[:id])
    if @book.destroy
      flash[:message]="#{@book.book_name}  Sucessfully Deleted"
      redirect_to book_shop_books_path(@book_shop)
    end
  end

  private 
  def find_book_shop_params
    BookShop.find(params[:book_shop_id])
  end
  def set_db_field
    params.require(:book).permit(:book_name, :book_description, :book_price, :book_author)
  end
end
