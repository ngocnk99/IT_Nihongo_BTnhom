class AddUniqueConstraintReview < ActiveRecord::Migration[6.0]
  def change
    add_index :book_reviews, [:user_id, :book_id], :unique => true
  end
end
