require 'test_helper'

class MetaControllerTest < ActionController::TestCase
  setup do
    @metum = meta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create metum" do
    assert_difference('Metum.count') do
      post :create, metum: { committee1: @metum.committee1, committee2: @metum.committee2, committee3: @metum.committee3, committee4: @metum.committee4, committee5: @metum.committee5, password: @metum.password, username: @metum.username }
    end

    assert_redirected_to metum_path(assigns(:metum))
  end

  test "should show metum" do
    get :show, id: @metum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @metum
    assert_response :success
  end

  test "should update metum" do
    patch :update, id: @metum, metum: { committee1: @metum.committee1, committee2: @metum.committee2, committee3: @metum.committee3, committee4: @metum.committee4, committee5: @metum.committee5, password: @metum.password, username: @metum.username }
    assert_redirected_to metum_path(assigns(:metum))
  end

  test "should destroy metum" do
    assert_difference('Metum.count', -1) do
      delete :destroy, id: @metum
    end

    assert_redirected_to meta_path
  end
end
