require 'test_helper'

class RcausesControllerTest < ActionController::TestCase
  setup do
    @rcause = rcauses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rcauses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rcause" do
    assert_difference('Rcause.count') do
      post :create, rcause: { description: @rcause.description, horizon_end_date: @rcause.horizon_end_date, horizon_start_date: @rcause.horizon_start_date, likelihood: @rcause.likelihood, occurence_count: @rcause.occurence_count, period: @rcause.period, probability: @rcause.probability, reference: @rcause.reference, title: @rcause.title }
    end

    assert_redirected_to rcause_path(assigns(:rcause))
  end

  test "should show rcause" do
    get :show, id: @rcause
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rcause
    assert_response :success
  end

  test "should update rcause" do
    put :update, id: @rcause, rcause: { description: @rcause.description, horizon_end_date: @rcause.horizon_end_date, horizon_start_date: @rcause.horizon_start_date, likelihood: @rcause.likelihood, occurence_count: @rcause.occurence_count, period: @rcause.period, probability: @rcause.probability, reference: @rcause.reference, title: @rcause.title }
    assert_redirected_to rcause_path(assigns(:rcause))
  end

  test "should destroy rcause" do
    assert_difference('Rcause.count', -1) do
      delete :destroy, id: @rcause
    end

    assert_redirected_to rcauses_path
  end
end
