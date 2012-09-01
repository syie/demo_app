require 'test_helper'

class MicropostersControllerTest < ActionController::TestCase
  setup do
    @microposter = microposters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microposters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microposter" do
    assert_difference('Microposter.count') do
      post :create, microposter: @microposter.attributes
    end

    assert_redirected_to microposter_path(assigns(:microposter))
  end

  test "should show microposter" do
    get :show, id: @microposter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microposter
    assert_response :success
  end

  test "should update microposter" do
    put :update, id: @microposter, microposter: @microposter.attributes
    assert_redirected_to microposter_path(assigns(:microposter))
  end

  test "should destroy microposter" do
    assert_difference('Microposter.count', -1) do
      delete :destroy, id: @microposter
    end

    assert_redirected_to microposters_path
  end
end
