class AddRateToReivew < ActiveRecord::Migration[6.0]
  def change
    add_column :book_reviews, :rate, :integer
  end
end
