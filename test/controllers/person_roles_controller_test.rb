require 'test_helper'

class PersonRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_role = person_roles(:one)
  end

  test "should get index" do
    get person_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_person_role_url
    assert_response :success
  end

  test "should create person_role" do
    assert_difference('PersonRole.count') do
      post person_roles_url, params: { person_role: { person_id: @person_role.person_id, role_id: @person_role.role_id } }
    end

    assert_redirected_to person_role_url(PersonRole.last)
  end

  test "should show person_role" do
    get person_role_url(@person_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_role_url(@person_role)
    assert_response :success
  end

  test "should update person_role" do
    patch person_role_url(@person_role), params: { person_role: { person_id: @person_role.person_id, role_id: @person_role.role_id } }
    assert_redirected_to person_role_url(@person_role)
  end

  test "should destroy person_role" do
    assert_difference('PersonRole.count', -1) do
      delete person_role_url(@person_role)
    end

    assert_redirected_to person_roles_url
  end
end
