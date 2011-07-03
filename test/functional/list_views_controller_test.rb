require 'test_helper'

class ListViewsControllerTest < ActionController::TestCase
  setup do
    @list_view = list_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_view" do
    assert_difference('ListView.count') do
      post :create, :list_view => @list_view.attributes
    end

    assert_redirected_to list_view_path(assigns(:list_view))
  end

  test "should show list_view" do
    get :show, :id => @list_view.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @list_view.to_param
    assert_response :success
  end

  test "should update list_view" do
    put :update, :id => @list_view.to_param, :list_view => @list_view.attributes
    assert_redirected_to list_view_path(assigns(:list_view))
  end

  test "should destroy list_view" do
    assert_difference('ListView.count', -1) do
      delete :destroy, :id => @list_view.to_param
    end

    assert_redirected_to list_views_path
  end
end
