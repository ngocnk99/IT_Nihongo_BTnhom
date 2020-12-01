class AddForeignKeyStoreBook < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :store_books, :stores, column: :store_id
    add_foreign_key :store_books, :books, column: :book_id
    
  end
end
