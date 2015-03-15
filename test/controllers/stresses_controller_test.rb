require 'test_helper'

class StressesControllerTest < ActionController::TestCase
  setup do
    @stress = stresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stress" do
    assert_difference('Stress.count') do
      post :create, stress: {  }
    end

    assert_redirected_to stress_path(assigns(:stress))
  end

  test "should show stress" do
    get :show, id: @stress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stress
    assert_response :success
  end

  test "should update stress" do
    patch :update, id: @stress, stress: {  }
    assert_redirected_to stress_path(assigns(:stress))
  end

  test "should destroy stress" do
    assert_difference('Stress.count', -1) do
      delete :destroy, id: @stress
    end

    assert_redirected_to stresses_path
  end
end
