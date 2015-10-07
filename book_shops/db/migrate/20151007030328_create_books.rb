class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_name
      t.text :book_description
      t.string :book_author
      t.integer :book_price

      t.timestamps null: false
    end
  end
end
