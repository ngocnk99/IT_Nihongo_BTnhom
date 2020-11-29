class BookReview < ApplicationRecord
    belongs_to :book
    belongs_to :user
    validates :rate, :inclusion => { :in => 1..10 }
end
