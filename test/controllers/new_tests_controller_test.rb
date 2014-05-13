require 'test_helper'

class NewTestsControllerTest < ActionController::TestCase
  setup do
    @new_test = new_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_test" do
    assert_difference('NewTest.count') do
      post :create, new_test: { email: @new_test.email }
    end

    assert_redirected_to new_test_path(assigns(:new_test))
  end

  test "should show new_test" do
    get :show, id: @new_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_test
    assert_response :success
  end

  test "should update new_test" do
    patch :update, id: @new_test, new_test: { email: @new_test.email }
    assert_redirected_to new_test_path(assigns(:new_test))
  end

  test "should destroy new_test" do
    assert_difference('NewTest.count', -1) do
      delete :destroy, id: @new_test
    end

    assert_redirected_to new_tests_path
  end
end
