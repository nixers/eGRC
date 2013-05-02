require 'test_helper'

class AinitsControllerTest < ActionController::TestCase
  setup do
    @ainit = ainits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ainits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ainit" do
    assert_difference('Ainit.count') do
      post :create, ainit: { Compliance: @ainit.Compliance, Context: @ainit.Context, Deliverables: @ainit.Deliverables, Objective: @ainit.Objective, Origin: @ainit.Origin, Refernce: @ainit.Refernce, Scope: @ainit.Scope, Standard: @ainit.Standard, Status: @ainit.Status, Topic: @ainit.Topic }
    end

    assert_redirected_to ainit_path(assigns(:ainit))
  end

  test "should show ainit" do
    get :show, id: @ainit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ainit
    assert_response :success
  end

  test "should update ainit" do
    put :update, id: @ainit, ainit: { Compliance: @ainit.Compliance, Context: @ainit.Context, Deliverables: @ainit.Deliverables, Objective: @ainit.Objective, Origin: @ainit.Origin, Refernce: @ainit.Refernce, Scope: @ainit.Scope, Standard: @ainit.Standard, Status: @ainit.Status, Topic: @ainit.Topic }
    assert_redirected_to ainit_path(assigns(:ainit))
  end

  test "should destroy ainit" do
    assert_difference('Ainit.count', -1) do
      delete :destroy, id: @ainit
    end

    assert_redirected_to ainits_path
  end
end
