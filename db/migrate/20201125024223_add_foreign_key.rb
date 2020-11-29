class AddForeignKey < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :book_reviews, :users, column: :user_id
    add_foreign_key :book_reviews, :books, column: :book_id
    
  end
end
