class BookShop < ActiveRecord::Base
	validates :shop_name,:shop_location,:presence=>true,length: {minimum: 5, maximum:15}
	validates :phone_number, numericality: true, length: {is: 10}, :presence=>true 
	validates :email_address, uniqueness: true, length: {minimum: 7, maximum:25},:presence=>true
	has_attached_file :image
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	has_many :books
end
