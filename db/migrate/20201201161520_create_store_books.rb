class CreateStoreBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :store_books do |t|
      t.integer :store_id
      t.integer :book_id

      t.timestamps
    end
  end
end
