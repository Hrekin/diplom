require 'test_helper'

class RequestPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_person = request_people(:one)
  end

  test "should get index" do
    get request_people_url
    assert_response :success
  end

  test "should get new" do
    get new_request_person_url
    assert_response :success
  end

  test "should create request_person" do
    assert_difference('RequestPerson.count') do
      post request_people_url, params: { request_person: { person_id: @request_person.person_id, person_type: @request_person.person_type, request_id: @request_person.request_id } }
    end

    assert_redirected_to request_person_url(RequestPerson.last)
  end

  test "should show request_person" do
    get request_person_url(@request_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_person_url(@request_person)
    assert_response :success
  end

  test "should update request_person" do
    patch request_person_url(@request_person), params: { request_person: { person_id: @request_person.person_id, person_type: @request_person.person_type, request_id: @request_person.request_id } }
    assert_redirected_to request_person_url(@request_person)
  end

  test "should destroy request_person" do
    assert_difference('RequestPerson.count', -1) do
      delete request_person_url(@request_person)
    end

    assert_redirected_to request_people_url
  end
end
