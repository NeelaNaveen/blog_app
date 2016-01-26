require 'test_helper'

class NeelasControllerTest < ActionController::TestCase
  setup do
    @neela = neelas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:neelas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create neela" do
    assert_difference('Neela.count') do
      post :create, neela: { blood: @neela.blood, group: @neela.group, height: @neela.height, username: @neela.username, weight: @neela.weight }
    end

    assert_redirected_to neela_path(assigns(:neela))
  end

  test "should show neela" do
    get :show, id: @neela
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @neela
    assert_response :success
  end

  test "should update neela" do
    patch :update, id: @neela, neela: { blood: @neela.blood, group: @neela.group, height: @neela.height, username: @neela.username, weight: @neela.weight }
    assert_redirected_to neela_path(assigns(:neela))
  end

  test "should destroy neela" do
    assert_difference('Neela.count', -1) do
      delete :destroy, id: @neela
    end

    assert_redirected_to neelas_path
  end
end
