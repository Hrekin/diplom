require 'test_helper'

class DispositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disposition = dispositions(:one)
  end

  test "should get index" do
    get dispositions_url
    assert_response :success
  end

  test "should get new" do
    get new_disposition_url
    assert_response :success
  end

  test "should create disposition" do
    assert_difference('Disposition.count') do
      post dispositions_url, params: { disposition: { name: @disposition.name } }
    end

    assert_redirected_to disposition_url(Disposition.last)
  end

  test "should show disposition" do
    get disposition_url(@disposition)
    assert_response :success
  end

  test "should get edit" do
    get edit_disposition_url(@disposition)
    assert_response :success
  end

  test "should update disposition" do
    patch disposition_url(@disposition), params: { disposition: { name: @disposition.name } }
    assert_redirected_to disposition_url(@disposition)
  end

  test "should destroy disposition" do
    assert_difference('Disposition.count', -1) do
      delete disposition_url(@disposition)
    end

    assert_redirected_to dispositions_url
  end
end
