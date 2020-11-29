class Book < ApplicationRecord
    has_one_attached :image
    has_many :book_reviews, :dependent => :destroy
    attr_accessor :rate
    attr_accessor :reviews
end
