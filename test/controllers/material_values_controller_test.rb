require 'test_helper'

class MaterialValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material_value = material_values(:one)
  end

  test "should get index" do
    get material_values_url
    assert_response :success
  end

  test "should get new" do
    get new_material_value_url
    assert_response :success
  end

  test "should create material_value" do
    assert_difference('MaterialValue.count') do
      post material_values_url, params: { material_value: { exemplar_detail_id: @material_value.exemplar_detail_id, position_query_id: @material_value.position_query_id, status: @material_value.status } }
    end

    assert_redirected_to material_value_url(MaterialValue.last)
  end

  test "should show material_value" do
    get material_value_url(@material_value)
    assert_response :success
  end

  test "should get edit" do
    get edit_material_value_url(@material_value)
    assert_response :success
  end

  test "should update material_value" do
    patch material_value_url(@material_value), params: { material_value: { exemplar_detail_id: @material_value.exemplar_detail_id, position_query_id: @material_value.position_query_id, status: @material_value.status } }
    assert_redirected_to material_value_url(@material_value)
  end

  test "should destroy material_value" do
    assert_difference('MaterialValue.count', -1) do
      delete material_value_url(@material_value)
    end

    assert_redirected_to material_values_url
  end
end
