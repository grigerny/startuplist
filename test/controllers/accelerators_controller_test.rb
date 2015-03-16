require 'test_helper'

class AcceleratorsControllerTest < ActionController::TestCase
  setup do
    @accelerator = accelerators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accelerators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accelerator" do
    assert_difference('Accelerator.count') do
      post :create, accelerator: {  }
    end

    assert_redirected_to accelerator_path(assigns(:accelerator))
  end

  test "should show accelerator" do
    get :show, id: @accelerator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accelerator
    assert_response :success
  end

  test "should update accelerator" do
    patch :update, id: @accelerator, accelerator: {  }
    assert_redirected_to accelerator_path(assigns(:accelerator))
  end

  test "should destroy accelerator" do
    assert_difference('Accelerator.count', -1) do
      delete :destroy, id: @accelerator
    end

    assert_redirected_to accelerators_path
  end
end
