require "application_system_test_case"

class GroceyItemsTest < ApplicationSystemTestCase
  setup do
    @grocey_item = grocey_items(:one)
  end

  test "visiting the index" do
    visit grocey_items_url
    assert_selector "h1", text: "Grocey Items"
  end

  test "creating a Grocey item" do
    visit grocey_items_url
    click_on "New Grocey Item"

    fill_in "Grocery list", with: @grocey_item.grocery_list_id
    fill_in "Item", with: @grocey_item.item
    fill_in "Qty", with: @grocey_item.qty
    click_on "Create Grocey item"

    assert_text "Grocey item was successfully created"
    click_on "Back"
  end

  test "updating a Grocey item" do
    visit grocey_items_url
    click_on "Edit", match: :first

    fill_in "Grocery list", with: @grocey_item.grocery_list_id
    fill_in "Item", with: @grocey_item.item
    fill_in "Qty", with: @grocey_item.qty
    click_on "Update Grocey item"

    assert_text "Grocey item was successfully updated"
    click_on "Back"
  end

  test "destroying a Grocey item" do
    visit grocey_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grocey item was successfully destroyed"
  end
end
