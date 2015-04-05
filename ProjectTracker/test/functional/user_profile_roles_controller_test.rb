require 'test_helper'

class UserProfileRolesControllerTest < ActionController::TestCase
  setup do
    @user_profile_role = user_profile_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_profile_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_profile_role" do
    assert_difference('UserProfileRole.count') do
      post :create, user_profile_role: { created_on: @user_profile_role.created_on }
    end

    assert_redirected_to user_profile_role_path(assigns(:user_profile_role))
  end

  test "should show user_profile_role" do
    get :show, id: @user_profile_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_profile_role
    assert_response :success
  end

  test "should update user_profile_role" do
    put :update, id: @user_profile_role, user_profile_role: { created_on: @user_profile_role.created_on }
    assert_redirected_to user_profile_role_path(assigns(:user_profile_role))
  end

  test "should destroy user_profile_role" do
    assert_difference('UserProfileRole.count', -1) do
      delete :destroy, id: @user_profile_role
    end

    assert_redirected_to user_profile_roles_path
  end
end
