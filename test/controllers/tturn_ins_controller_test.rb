require 'test_helper'

class TturnInsControllerTest < ActionController::TestCase
  setup do
    @tturn_in = tturn_ins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tturn_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tturn_in" do
    assert_difference('TturnIn.count') do
      post :create, tturn_in: { : @tturn_in., =: @tturn_in.=, =: @tturn_in.=, completed: @tturn_in.completed, default: @tturn_in.default, exercises_id: @tturn_in.exercises_id, priority: @tturn_in.priority, url: @tturn_in.url, user_id: @tturn_in.user_id }
    end

    assert_redirected_to tturn_in_path(assigns(:tturn_in))
  end

  test "should show tturn_in" do
    get :show, id: @tturn_in
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tturn_in
    assert_response :success
  end

  test "should update tturn_in" do
    patch :update, id: @tturn_in, tturn_in: { : @tturn_in., =: @tturn_in.=, =: @tturn_in.=, completed: @tturn_in.completed, default: @tturn_in.default, exercises_id: @tturn_in.exercises_id, priority: @tturn_in.priority, url: @tturn_in.url, user_id: @tturn_in.user_id }
    assert_redirected_to tturn_in_path(assigns(:tturn_in))
  end

  test "should destroy tturn_in" do
    assert_difference('TturnIn.count', -1) do
      delete :destroy, id: @tturn_in
    end

    assert_redirected_to tturn_ins_path
  end
end
