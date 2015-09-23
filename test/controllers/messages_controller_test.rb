require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  setup do
    @message = messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create message" do
    assert_difference('Message.count') do
      post :create, params: { message: { content: @message.content } }
    end

    assert_redirected_to message_path(Message.last)
  end

  test "should show message" do
    get :show, params: { id: @message }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @message }
    assert_response :success
  end

  test "should update message" do
    patch :update, params: { id: @message, message: { content: @message.content } }
    assert_redirected_to message_path(@message)
  end

  test "should destroy message" do
    assert_difference('Message.count', -1) do
      delete :destroy, params: { id: @message }
    end

    assert_redirected_to messages_path
  end
end
