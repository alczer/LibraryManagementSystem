require 'test_helper'

class ItemAuthorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_author = item_authors(:one)
  end

  test "should get index" do
    get item_authors_url
    assert_response :success
  end

  test "should get new" do
    get new_item_author_url
    assert_response :success
  end

  test "should create item_author" do
    assert_difference('ItemAuthor.count') do
      post item_authors_url, params: { item_author: { author_id: @item_author.author_id, item_id: @item_author.item_id } }
    end

    assert_redirected_to item_author_url(ItemAuthor.last)
  end

  test "should show item_author" do
    get item_author_url(@item_author)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_author_url(@item_author)
    assert_response :success
  end

  test "should update item_author" do
    patch item_author_url(@item_author), params: { item_author: { author_id: @item_author.author_id, item_id: @item_author.item_id } }
    assert_redirected_to item_author_url(@item_author)
  end

  test "should destroy item_author" do
    assert_difference('ItemAuthor.count', -1) do
      delete item_author_url(@item_author)
    end

    assert_redirected_to item_authors_url
  end
end
