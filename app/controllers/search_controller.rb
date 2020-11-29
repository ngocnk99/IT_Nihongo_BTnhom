class SearchController < ApplicationController
	def name_search

		@book_results = Book.where("title LIKE ?", "%#{params[:title]}%")
		
		if @book_results == nil
			flash[:message] = "No entries could be found. Refine your search and try again."
			redirect_to '/'
		end
	end
	
	def rank
	    @book_results = Book.joins("JOIN book_reviews ON books.id = book_reviews.book_id")
    .select("books.*, avg(book_reviews.rate) as avgrate")
    .group("books.id")
    .order('avgrate')
    .reverse_order
    .limit(10)
	end
end
