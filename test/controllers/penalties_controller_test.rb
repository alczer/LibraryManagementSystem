require 'test_helper'

class PenaltiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @penalty = penalties(:one)
  end

  test "should get index" do
    get penalties_url
    assert_response :success
  end

  test "should get new" do
    get new_penalty_url
    assert_response :success
  end

  test "should create penalty" do
    assert_difference('Penalty.count') do
      post penalties_url, params: { penalty: { client_id: @penalty.client_id, date: @penalty.date, loan_id: @penalty.loan_id, value: @penalty.value } }
    end

    assert_redirected_to penalty_url(Penalty.last)
  end

  test "should show penalty" do
    get penalty_url(@penalty)
    assert_response :success
  end

  test "should get edit" do
    get edit_penalty_url(@penalty)
    assert_response :success
  end

  test "should update penalty" do
    patch penalty_url(@penalty), params: { penalty: { client_id: @penalty.client_id, date: @penalty.date, loan_id: @penalty.loan_id, value: @penalty.value } }
    assert_redirected_to penalty_url(@penalty)
  end

  test "should destroy penalty" do
    assert_difference('Penalty.count', -1) do
      delete penalty_url(@penalty)
    end

    assert_redirected_to penalties_url
  end
end
