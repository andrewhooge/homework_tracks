require 'test_helper'

class AassignmentsControllerTest < ActionController::TestCase
  setup do
    @aassignment = aassignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aassignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aassignment" do
    assert_difference('Aassignment.count') do
      post :create, aassignment: { date: @aassignment.date, description: @aassignment.description, due: @aassignment.due, title: @aassignment.title }
    end

    assert_redirected_to aassignment_path(assigns(:aassignment))
  end

  test "should show aassignment" do
    get :show, id: @aassignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aassignment
    assert_response :success
  end

  test "should update aassignment" do
    patch :update, id: @aassignment, aassignment: { date: @aassignment.date, description: @aassignment.description, due: @aassignment.due, title: @aassignment.title }
    assert_redirected_to aassignment_path(assigns(:aassignment))
  end

  test "should destroy aassignment" do
    assert_difference('Aassignment.count', -1) do
      delete :destroy, id: @aassignment
    end

    assert_redirected_to aassignments_path
  end
end
