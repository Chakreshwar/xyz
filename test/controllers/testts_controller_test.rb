require 'test_helper'

class TesttsControllerTest < ActionController::TestCase
  setup do
    @testt = testts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testt" do
    assert_difference('Testt.count') do
      post :create, testt: { name: @testt.name }
    end

    assert_redirected_to testt_path(assigns(:testt))
  end

  test "should show testt" do
    get :show, id: @testt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testt
    assert_response :success
  end

  test "should update testt" do
    patch :update, id: @testt, testt: { name: @testt.name }
    assert_redirected_to testt_path(assigns(:testt))
  end

  test "should destroy testt" do
    assert_difference('Testt.count', -1) do
      delete :destroy, id: @testt
    end

    assert_redirected_to testts_path
  end
end
