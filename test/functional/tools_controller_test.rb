require 'test_helper'

class ToolsControllerTest < ActionController::TestCase
  setup do
    @tool = tools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tool" do
    assert_difference('Tool.count') do
      post :create, tool: { tool_condition: @tool.tool_condition, tool_description: @tool.tool_description, tool_name: @tool.tool_name, tool_picture: @tool.tool_picture, tool_price: @tool.tool_price, tool_type: @tool.tool_type }
    end

    assert_redirected_to tool_path(assigns(:tool))
  end

  test "should show tool" do
    get :show, id: @tool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tool
    assert_response :success
  end

  test "should update tool" do
    put :update, id: @tool, tool: { tool_condition: @tool.tool_condition, tool_description: @tool.tool_description, tool_name: @tool.tool_name, tool_picture: @tool.tool_picture, tool_price: @tool.tool_price, tool_type: @tool.tool_type }
    assert_redirected_to tool_path(assigns(:tool))
  end

  test "should destroy tool" do
    assert_difference('Tool.count', -1) do
      delete :destroy, id: @tool
    end

    assert_redirected_to tools_path
  end
end
