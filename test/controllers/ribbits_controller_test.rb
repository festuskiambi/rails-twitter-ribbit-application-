require 'test_helper'

class RibbitsControllerTest < ActionController::TestCase
  setup do
    @ribbit = ribbits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ribbits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ribbit" do
    assert_difference('Ribbit.count') do
      post :create, ribbit: { content: @ribbit.content, user_id: @ribbit.user_id }
    end

    assert_redirected_to ribbit_path(assigns(:ribbit))
  end

  test "should show ribbit" do
    get :show, id: @ribbit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ribbit
    assert_response :success
  end

  test "should update ribbit" do
    patch :update, id: @ribbit, ribbit: { content: @ribbit.content, user_id: @ribbit.user_id }
    assert_redirected_to ribbit_path(assigns(:ribbit))
  end

  test "should destroy ribbit" do
    assert_difference('Ribbit.count', -1) do
      delete :destroy, id: @ribbit
    end

    assert_redirected_to ribbits_path
  end
end
