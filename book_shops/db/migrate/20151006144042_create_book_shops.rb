class CreateBookShops < ActiveRecord::Migration
  def change
    create_table :book_shops do |t|
      t.string :shop_name, :limit=>35, :null=>false
      t.string :shop_location,:limit=>30, :null=>false
      t.biginit :phone_number,:limit=>10, :null=>false
      t.string :email_address,:limit=>50, :null=>false
      t.string :shop_pic

      t.timestamps null: false
    end
  end
end