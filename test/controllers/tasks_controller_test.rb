require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  test "should get index" do
    get tasks_index_url
=======
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url
>>>>>>> c98d32fb086b4d5744edc1de3bb74cda0403a523
    assert_response :success
  end

  test "should get new" do
<<<<<<< HEAD
    get tasks_new_url
    assert_response :success
  end

  test "should get show" do
    get tasks_show_url
=======
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { description: @task.description, image_url: @task.image_url, title: @task.title } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test "should show task" do
    get task_url(@task)
>>>>>>> c98d32fb086b4d5744edc1de3bb74cda0403a523
    assert_response :success
  end

  test "should get edit" do
<<<<<<< HEAD
    get tasks_edit_url
    assert_response :success
  end

  test "should get delete" do
    get tasks_delete_url
    assert_response :success
=======
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { description: @task.description, image_url: @task.image_url, title: @task.title } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_url
>>>>>>> c98d32fb086b4d5744edc1de3bb74cda0403a523
  end
end
