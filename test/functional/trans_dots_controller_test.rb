require 'test_helper'

class TransDotsControllerTest < ActionController::TestCase
  setup do
    @trans_dot = trans_dots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trans_dots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trans_dot" do
    assert_difference('TransDot.count') do
      post :create, :trans_dot => @trans_dot.attributes
    end

    assert_redirected_to trans_dot_path(assigns(:trans_dot))
  end

  test "should show trans_dot" do
    get :show, :id => @trans_dot.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @trans_dot.to_param
    assert_response :success
  end

  test "should update trans_dot" do
    put :update, :id => @trans_dot.to_param, :trans_dot => @trans_dot.attributes
    assert_redirected_to trans_dot_path(assigns(:trans_dot))
  end

  test "should destroy trans_dot" do
    assert_difference('TransDot.count', -1) do
      delete :destroy, :id => @trans_dot.to_param
    end

    assert_redirected_to trans_dots_path
  end
end
