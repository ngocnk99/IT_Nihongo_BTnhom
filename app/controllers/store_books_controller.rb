class StoreBooksController < ApplicationController
  before_action :set_store_book, only: [:show, :edit, :update, :destroy]

  # GET /store_books
  # GET /store_books.json
  def index
    @store_books = StoreBook.all
  end

  # GET /store_books/1
  # GET /store_books/1.json
  def show
  end

  # GET /store_books/new
  def new
    @store_book = StoreBook.new
  end

  # GET /store_books/1/edit
  def edit
  end

  # POST /store_books
  # POST /store_books.json
  def create
    @store_book = StoreBook.new(store_book_params)

    respond_to do |format|
      if @store_book.save
        format.html { redirect_to @store_book, notice: 'Store book was successfully created.' }
        format.json { render :show, status: :created, location: @store_book }
      else
        format.html { render :new }
        format.json { render json: @store_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_books/1
  # PATCH/PUT /store_books/1.json
  def update
    respond_to do |format|
      if @store_book.update(store_book_params)
        format.html { redirect_to @store_book, notice: 'Store book was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_book }
      else
        format.html { render :edit }
        format.json { render json: @store_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_books/1
  # DELETE /store_books/1.json
  def destroy
    @store_book.destroy
    respond_to do |format|
      format.html { redirect_to store_books_url, notice: 'Store book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_book
      @store_book = StoreBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def store_book_params
      params.require(:store_book).permit(:store_id, :book_id)
    end
end
