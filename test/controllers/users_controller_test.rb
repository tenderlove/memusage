require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, params: { user: { description: @user.description, name: @user.name } }
    end

    assert_redirected_to user_path(User.last)
  end

  test "should show user" do
    get :show, params: { id: @user }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @user }
    assert_response :success
  end

  test "should update user" do
    patch :update, params: { id: @user, user: { description: @user.description, name: @user.name } }
    assert_redirected_to user_path(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, params: { id: @user }
    end

    assert_redirected_to users_path
  end
end
