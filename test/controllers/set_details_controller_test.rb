require 'test_helper'

class SetDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @set_detail = set_details(:one)
  end

  test "should get index" do
    get set_details_url
    assert_response :success
  end

  test "should get new" do
    get new_set_detail_url
    assert_response :success
  end

  test "should create set_detail" do
    assert_difference('SetDetail.count') do
      post set_details_url, params: { set_detail: { set_name: @set_detail.set_name } }
    end

    assert_redirected_to set_detail_url(SetDetail.last)
  end

  test "should show set_detail" do
    get set_detail_url(@set_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_set_detail_url(@set_detail)
    assert_response :success
  end

  test "should update set_detail" do
    patch set_detail_url(@set_detail), params: { set_detail: { set_name: @set_detail.set_name } }
    assert_redirected_to set_detail_url(@set_detail)
  end

  test "should destroy set_detail" do
    assert_difference('SetDetail.count', -1) do
      delete set_detail_url(@set_detail)
    end

    assert_redirected_to set_details_url
  end
end
