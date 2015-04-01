require 'test_helper'

class UserprofilesControllerTest < ActionController::TestCase
  setup do
    @userprofile = userprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userprofile" do
    assert_difference('Userprofile.count') do
      post :create, userprofile: { created_on: @userprofile.created_on, email: @userprofile.email, first_name: @userprofile.first_name, id: @userprofile.id, job_title: @userprofile.job_title, last_name: @userprofile.last_name, nt_login: @userprofile.nt_login, phone_number: @userprofile.phone_number }
    end

    assert_redirected_to userprofile_path(assigns(:userprofile))
  end

  test "should show userprofile" do
    get :show, id: @userprofile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userprofile
    assert_response :success
  end

  test "should update userprofile" do
    put :update, id: @userprofile, userprofile: { created_on: @userprofile.created_on, email: @userprofile.email, first_name: @userprofile.first_name, id: @userprofile.id, job_title: @userprofile.job_title, last_name: @userprofile.last_name, nt_login: @userprofile.nt_login, phone_number: @userprofile.phone_number }
    assert_redirected_to userprofile_path(assigns(:userprofile))
  end

  test "should destroy userprofile" do
    assert_difference('Userprofile.count', -1) do
      delete :destroy, id: @userprofile
    end

    assert_redirected_to userprofiles_path
  end
end
