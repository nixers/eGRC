require 'test_helper'

class ArecsControllerTest < ActionController::TestCase
  setup do
    @arec = arecs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arecs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arec" do
    assert_difference('Arec.count') do
      post :create, arec: { Closed: @arec.Closed, Description: @arec.Description, Primaryt: @arec.Primaryt, Priority: @arec.Priority, Secondaryt: @arec.Secondaryt, Severity: @arec.Severity, Status: @arec.Status, Target: @arec.Target, Title: @arec.Title, Verification: @arec.Verification, Verified: @arec.Verified, auditee: @arec.auditee, auditor: @arec.auditor, block: @arec.block, compliance: @arec.compliance, confidential: @arec.confidential, dependency: @arec.dependency, duplicate: @arec.duplicate, refer: @arec.refer, reference: @arec.reference, type: @arec.type }
    end

    assert_redirected_to arec_path(assigns(:arec))
  end

  test "should show arec" do
    get :show, id: @arec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arec
    assert_response :success
  end

  test "should update arec" do
    put :update, id: @arec, arec: { Closed: @arec.Closed, Description: @arec.Description, Primaryt: @arec.Primaryt, Priority: @arec.Priority, Secondaryt: @arec.Secondaryt, Severity: @arec.Severity, Status: @arec.Status, Target: @arec.Target, Title: @arec.Title, Verification: @arec.Verification, Verified: @arec.Verified, auditee: @arec.auditee, auditor: @arec.auditor, block: @arec.block, compliance: @arec.compliance, confidential: @arec.confidential, dependency: @arec.dependency, duplicate: @arec.duplicate, refer: @arec.refer, reference: @arec.reference, type: @arec.type }
    assert_redirected_to arec_path(assigns(:arec))
  end

  test "should destroy arec" do
    assert_difference('Arec.count', -1) do
      delete :destroy, id: @arec
    end

    assert_redirected_to arecs_path
  end
end
