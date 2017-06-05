require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post items_url, params: { item: { date_pub: @item.date_pub, description: @item.description, isbn: @item.isbn, item_img_content_type: @item.item_img_content_type, item_img_file_name: @item.item_img_file_name, item_img_file_size: @item.item_img_file_size, item_img_updated_at: @item.item_img_updated_at, language: @item.language, name: @item.name, state: @item.state } }
    end

    assert_redirected_to item_url(Item.last)
  end

  test "should show item" do
    get item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_url(@item)
    assert_response :success
  end

  test "should update item" do
    patch item_url(@item), params: { item: { date_pub: @item.date_pub, description: @item.description, isbn: @item.isbn, item_img_content_type: @item.item_img_content_type, item_img_file_name: @item.item_img_file_name, item_img_file_size: @item.item_img_file_size, item_img_updated_at: @item.item_img_updated_at, language: @item.language, name: @item.name, state: @item.state } }
    assert_redirected_to item_url(@item)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete item_url(@item)
    end

    assert_redirected_to items_url
  end
end
