class AddPaperClipFieldsToBookShop < ActiveRecord::Migration
  def change
  	add_column :book_shops, :image_file_name, :string
  	add_column :book_shops, :image_content_type,:string
  	add_column :book_shops, :image_file_size, :string
  	add_column :book_shops, :image_updated_at, :datetime 
  	remove_column :book_shops, :shop_pic
  end
end
