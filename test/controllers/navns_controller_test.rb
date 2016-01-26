require 'test_helper'

class NavnsControllerTest < ActionController::TestCase
  setup do
    @navn = navns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:navns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create navn" do
    assert_difference('Navn.count') do
      post :create, navn: { height: @navn.height, location: @navn.location, username: @navn.username, weight: @navn.weight }
    end

    assert_redirected_to navn_path(assigns(:navn))
  end

  test "should show navn" do
    get :show, id: @navn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @navn
    assert_response :success
  end

  test "should update navn" do
    patch :update, id: @navn, navn: { height: @navn.height, location: @navn.location, username: @navn.username, weight: @navn.weight }
    assert_redirected_to navn_path(assigns(:navn))
  end

  test "should destroy navn" do
    assert_difference('Navn.count', -1) do
      delete :destroy, id: @navn
    end

    assert_redirected_to navns_path
  end
end
