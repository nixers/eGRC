require 'test_helper'

class ArecosControllerTest < ActionController::TestCase
  setup do
    @areco = arecos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arecos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create areco" do
    assert_difference('Areco.count') do
      post :create, areco: { Atitle: @areco.Atitle, Ctitle: @areco.Ctitle, Dtitle: @areco.Dtitle, Title: @areco.Title, apriority: @areco.apriority, aseverity: @areco.aseverity, atartget: @areco.atartget, auditee: @areco.auditee, auditor: @areco.auditor, blocked: @areco.blocked, closed: @areco.closed, compliance: @areco.compliance, confidential: @areco.confidential, ctarget: @areco.ctarget, ddtitle: @areco.ddtitle, dependent: @areco.dependent, description: @areco.description, dreference: @areco.dreference, dtype: @areco.dtype, duplicate: @areco.duplicate, kind: @areco.kind, level: @areco.level, org: @areco.org, primary: @areco.primary, priority: @areco.priority, refer: @areco.refer, reference: @areco.reference, secondary: @areco.secondary, severity: @areco.severity, status: @areco.status, target: @areco.target, type: @areco.type, verification: @areco.verification, verified: @areco.verified }
    end

    assert_redirected_to areco_path(assigns(:areco))
  end

  test "should show areco" do
    get :show, id: @areco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @areco
    assert_response :success
  end

  test "should update areco" do
    put :update, id: @areco, areco: { Atitle: @areco.Atitle, Ctitle: @areco.Ctitle, Dtitle: @areco.Dtitle, Title: @areco.Title, apriority: @areco.apriority, aseverity: @areco.aseverity, atartget: @areco.atartget, auditee: @areco.auditee, auditor: @areco.auditor, blocked: @areco.blocked, closed: @areco.closed, compliance: @areco.compliance, confidential: @areco.confidential, ctarget: @areco.ctarget, ddtitle: @areco.ddtitle, dependent: @areco.dependent, description: @areco.description, dreference: @areco.dreference, dtype: @areco.dtype, duplicate: @areco.duplicate, kind: @areco.kind, level: @areco.level, org: @areco.org, primary: @areco.primary, priority: @areco.priority, refer: @areco.refer, reference: @areco.reference, secondary: @areco.secondary, severity: @areco.severity, status: @areco.status, target: @areco.target, type: @areco.type, verification: @areco.verification, verified: @areco.verified }
    assert_redirected_to areco_path(assigns(:areco))
  end

  test "should destroy areco" do
    assert_difference('Areco.count', -1) do
      delete :destroy, id: @areco
    end

    assert_redirected_to arecos_path
  end
end
