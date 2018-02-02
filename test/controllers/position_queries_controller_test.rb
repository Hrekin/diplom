require 'test_helper'

class PositionQueriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @position_query = position_queries(:one)
  end

  test "should get index" do
    get position_queries_url
    assert_response :success
  end

  test "should get new" do
    get new_position_query_url
    assert_response :success
  end

  test "should create position_query" do
    assert_difference('PositionQuery.count') do
      post position_queries_url, params: { position_query: { model_id: @position_query.model_id, quanity: @position_query.quanity, query_id: @position_query.query_id } }
    end

    assert_redirected_to position_query_url(PositionQuery.last)
  end

  test "should show position_query" do
    get position_query_url(@position_query)
    assert_response :success
  end

  test "should get edit" do
    get edit_position_query_url(@position_query)
    assert_response :success
  end

  test "should update position_query" do
    patch position_query_url(@position_query), params: { position_query: { model_id: @position_query.model_id, quanity: @position_query.quanity, query_id: @position_query.query_id } }
    assert_redirected_to position_query_url(@position_query)
  end

  test "should destroy position_query" do
    assert_difference('PositionQuery.count', -1) do
      delete position_query_url(@position_query)
    end

    assert_redirected_to position_queries_url
  end
end
