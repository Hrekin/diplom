require 'test_helper'

class ExemplarDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exemplar_detail = exemplar_details(:one)
  end

  test "should get index" do
    get exemplar_details_url
    assert_response :success
  end

  test "should get new" do
    get new_exemplar_detail_url
    assert_response :success
  end

  test "should create exemplar_detail" do
    assert_difference('ExemplarDetail.count') do
      post exemplar_details_url, params: { exemplar_detail: { exemplar_detail_description: @exemplar_detail.exemplar_detail_description, exemplar_detail_name: @exemplar_detail.exemplar_detail_name, inventory_number: @exemplar_detail.inventory_number, model_id: @exemplar_detail.model_id, set_detail_id: @exemplar_detail.set_detail_id } }
    end

    assert_redirected_to exemplar_detail_url(ExemplarDetail.last)
  end

  test "should show exemplar_detail" do
    get exemplar_detail_url(@exemplar_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_exemplar_detail_url(@exemplar_detail)
    assert_response :success
  end

  test "should update exemplar_detail" do
    patch exemplar_detail_url(@exemplar_detail), params: { exemplar_detail: { exemplar_detail_description: @exemplar_detail.exemplar_detail_description, exemplar_detail_name: @exemplar_detail.exemplar_detail_name, inventory_number: @exemplar_detail.inventory_number, model_id: @exemplar_detail.model_id, set_detail_id: @exemplar_detail.set_detail_id } }
    assert_redirected_to exemplar_detail_url(@exemplar_detail)
  end

  test "should destroy exemplar_detail" do
    assert_difference('ExemplarDetail.count', -1) do
      delete exemplar_detail_url(@exemplar_detail)
    end

    assert_redirected_to exemplar_details_url
  end
end
