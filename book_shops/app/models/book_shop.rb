class BookShop < ActiveRecord::Base
	validates :shop_name,:shop_location, :phone_number, :email_address, :presence=>true
end
