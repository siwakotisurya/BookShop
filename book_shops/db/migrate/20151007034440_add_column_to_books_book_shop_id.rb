class AddColumnToBooksBookShopId < ActiveRecord::Migration
  def change
    add_column :books, :book_shop_id, :integer
  end
end
