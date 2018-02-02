require 'test_helper'

class DetailModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail_model = detail_models(:one)
  end

  test "should get index" do
    get detail_models_url
    assert_response :success
  end

  test "should get new" do
    get new_detail_model_url
    assert_response :success
  end

  test "should create detail_model" do
    assert_difference('DetailModel.count') do
      post detail_models_url, params: { detail_model: { category_id: @detail_model.category_id, description: @detail_model.description, manufacter: @detail_model.manufacter, name: @detail_model.name, produce_date: @detail_model.produce_date, properties: @detail_model.properties, serial_number: @detail_model.serial_number } }
    end

    assert_redirected_to detail_model_url(DetailModel.last)
  end

  test "should show detail_model" do
    get detail_model_url(@detail_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_detail_model_url(@detail_model)
    assert_response :success
  end

  test "should update detail_model" do
    patch detail_model_url(@detail_model), params: { detail_model: { category_id: @detail_model.category_id, description: @detail_model.description, manufacter: @detail_model.manufacter, name: @detail_model.name, produce_date: @detail_model.produce_date, properties: @detail_model.properties, serial_number: @detail_model.serial_number } }
    assert_redirected_to detail_model_url(@detail_model)
  end

  test "should destroy detail_model" do
    assert_difference('DetailModel.count', -1) do
      delete detail_model_url(@detail_model)
    end

    assert_redirected_to detail_models_url
  end
end
