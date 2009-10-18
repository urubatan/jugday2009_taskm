require 'test_helper'

class UserTasksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_task" do
    assert_difference('UserTask.count') do
      post :create, :user_task => { }
    end

    assert_redirected_to user_task_path(assigns(:user_task))
  end

  test "should show user_task" do
    get :show, :id => user_tasks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => user_tasks(:one).to_param
    assert_response :success
  end

  test "should update user_task" do
    put :update, :id => user_tasks(:one).to_param, :user_task => { }
    assert_redirected_to user_task_path(assigns(:user_task))
  end

  test "should destroy user_task" do
    assert_difference('UserTask.count', -1) do
      delete :destroy, :id => user_tasks(:one).to_param
    end

    assert_redirected_to user_tasks_path
  end
end
