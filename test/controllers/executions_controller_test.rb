require 'test_helper'

class ExecutionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get executions_index_url
    assert_response :success
  end

  test "should get new" do
    get executions_new_url
    assert_response :success
  end

  test "should get edit" do
    get executions_edit_url
    assert_response :success
  end

  test "should get show" do
    get executions_show_url
    assert_response :success
  end

end
