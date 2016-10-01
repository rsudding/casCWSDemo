require 'test_helper'

class DependenciesControllerTest < ActionController::TestCase
  setup do
    @dependency = dependencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dependencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dependency" do
    assert_difference('Dependency.count') do
      post :create, dependency: { authors: @dependency.authors, name: @dependency.name, version: @dependency.version }
    end

    assert_redirected_to dependency_path(assigns(:dependency))
  end

  test "should show dependency" do
    get :show, id: @dependency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dependency
    assert_response :success
  end

  test "should update dependency" do
    patch :update, id: @dependency, dependency: { authors: @dependency.authors, name: @dependency.name, version: @dependency.version }
    assert_redirected_to dependency_path(assigns(:dependency))
  end

  test "should destroy dependency" do
    assert_difference('Dependency.count', -1) do
      delete :destroy, id: @dependency
    end

    assert_redirected_to dependencies_path
  end
end
