class Book < ApplicationRecord
    has_one_attached :image
    has_many :book_reviews, :dependent => :destroy
    has_many :book_genres, :dependent => :destroy
    attr_accessor :rate
    attr_accessor :genres
    attr_accessor :reviews
end
