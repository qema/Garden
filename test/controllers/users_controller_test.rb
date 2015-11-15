require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { address: @user.address, city: @user.city, committee1: @user.committee1, committee2: @user.committee2, committee3: @user.committee3, committee4: @user.committee4, committee5: @user.committee5, contactmethod: @user.contactmethod, email: @user.email, firstname: @user.firstname, lastname: @user.lastname, phone: @user.phone, plotnumber: @user.plotnumber, plotpartners: @user.plotpartners, postpermission: @user.postpermission, registered: @user.registered, returning: @user.returning, secondplot: @user.secondplot, state: @user.state, zip: @user.zip }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { address: @user.address, city: @user.city, committee1: @user.committee1, committee2: @user.committee2, committee3: @user.committee3, committee4: @user.committee4, committee5: @user.committee5, contactmethod: @user.contactmethod, email: @user.email, firstname: @user.firstname, lastname: @user.lastname, phone: @user.phone, plotnumber: @user.plotnumber, plotpartners: @user.plotpartners, postpermission: @user.postpermission, registered: @user.registered, returning: @user.returning, secondplot: @user.secondplot, state: @user.state, zip: @user.zip }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
