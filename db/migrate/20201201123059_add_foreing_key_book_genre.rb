class AddForeingKeyBookGenre < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :book_genres, :genres, column: :genre_id
    add_foreign_key :book_genres, :books, column: :book_id
    
  end
end
