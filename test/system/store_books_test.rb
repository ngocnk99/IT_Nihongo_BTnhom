require "application_system_test_case"

class StoreBooksTest < ApplicationSystemTestCase
  setup do
    @store_book = store_books(:one)
  end

  test "visiting the index" do
    visit store_books_url
    assert_selector "h1", text: "Store Books"
  end

  test "creating a Store book" do
    visit store_books_url
    click_on "New Store Book"

    fill_in "Book", with: @store_book.book_id
    fill_in "Store", with: @store_book.store_id
    click_on "Create Store book"

    assert_text "Store book was successfully created"
    click_on "Back"
  end

  test "updating a Store book" do
    visit store_books_url
    click_on "Edit", match: :first

    fill_in "Book", with: @store_book.book_id
    fill_in "Store", with: @store_book.store_id
    click_on "Update Store book"

    assert_text "Store book was successfully updated"
    click_on "Back"
  end

  test "destroying a Store book" do
    visit store_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store book was successfully destroyed"
  end
end
