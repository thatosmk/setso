require 'test_helper'

class GroceyItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grocey_item = grocey_items(:one)
  end

  test "should get index" do
    get grocey_items_url
    assert_response :success
  end

  test "should get new" do
    get new_grocey_item_url
    assert_response :success
  end

  test "should create grocey_item" do
    assert_difference('GroceyItem.count') do
      post grocey_items_url, params: { grocey_item: { grocery_list_id: @grocey_item.grocery_list_id, item: @grocey_item.item, qty: @grocey_item.qty } }
    end

    assert_redirected_to grocey_item_url(GroceyItem.last)
  end

  test "should show grocey_item" do
    get grocey_item_url(@grocey_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_grocey_item_url(@grocey_item)
    assert_response :success
  end

  test "should update grocey_item" do
    patch grocey_item_url(@grocey_item), params: { grocey_item: { grocery_list_id: @grocey_item.grocery_list_id, item: @grocey_item.item, qty: @grocey_item.qty } }
    assert_redirected_to grocey_item_url(@grocey_item)
  end

  test "should destroy grocey_item" do
    assert_difference('GroceyItem.count', -1) do
      delete grocey_item_url(@grocey_item)
    end

    assert_redirected_to grocey_items_url
  end
end
