require 'test_helper'

class StoreBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_book = store_books(:one)
  end

  test "should get index" do
    get store_books_url
    assert_response :success
  end

  test "should get new" do
    get new_store_book_url
    assert_response :success
  end

  test "should create store_book" do
    assert_difference('StoreBook.count') do
      post store_books_url, params: { store_book: { book_id: @store_book.book_id, store_id: @store_book.store_id } }
    end

    assert_redirected_to store_book_url(StoreBook.last)
  end

  test "should show store_book" do
    get store_book_url(@store_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_book_url(@store_book)
    assert_response :success
  end

  test "should update store_book" do
    patch store_book_url(@store_book), params: { store_book: { book_id: @store_book.book_id, store_id: @store_book.store_id } }
    assert_redirected_to store_book_url(@store_book)
  end

  test "should destroy store_book" do
    assert_difference('StoreBook.count', -1) do
      delete store_book_url(@store_book)
    end

    assert_redirected_to store_books_url
  end
end
