require 'test_helper'

class AreportsControllerTest < ActionController::TestCase
  setup do
    @areport = areports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:areports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create areport" do
    assert_difference('Areport.count') do
      post :create, areport: { Actions: @areport.Actions, Duedate: @areport.Duedate, Recommendations: @areport.Recommendations, Source: @areport.Source, Status: @areport.Status, Summary: @areport.Summary, Title: @areport.Title }
    end

    assert_redirected_to areport_path(assigns(:areport))
  end

  test "should show areport" do
    get :show, id: @areport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @areport
    assert_response :success
  end

  test "should update areport" do
    put :update, id: @areport, areport: { Actions: @areport.Actions, Duedate: @areport.Duedate, Recommendations: @areport.Recommendations, Source: @areport.Source, Status: @areport.Status, Summary: @areport.Summary, Title: @areport.Title }
    assert_redirected_to areport_path(assigns(:areport))
  end

  test "should destroy areport" do
    assert_difference('Areport.count', -1) do
      delete :destroy, id: @areport
    end

    assert_redirected_to areports_path
  end
end
