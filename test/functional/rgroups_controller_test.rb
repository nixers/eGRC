require 'test_helper'

class RgroupsControllerTest < ActionController::TestCase
  setup do
    @rgroup = rgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rgroup" do
    assert_difference('Rgroup.count') do
      post :create, rgroup: { description: @rgroup.description, group_name: @rgroup.group_name }
    end

    assert_redirected_to rgroup_path(assigns(:rgroup))
  end

  test "should show rgroup" do
    get :show, id: @rgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rgroup
    assert_response :success
  end

  test "should update rgroup" do
    put :update, id: @rgroup, rgroup: { description: @rgroup.description, group_name: @rgroup.group_name }
    assert_redirected_to rgroup_path(assigns(:rgroup))
  end

  test "should destroy rgroup" do
    assert_difference('Rgroup.count', -1) do
      delete :destroy, id: @rgroup
    end

    assert_redirected_to rgroups_path
  end
end
