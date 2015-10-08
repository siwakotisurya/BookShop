class Book < ActiveRecord::Base
	validates :book_name,:book_description, :book_price, :book_author, :presence=>true
	belongs_to :book_shop
end
