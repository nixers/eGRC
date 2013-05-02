require 'test_helper'

class RinitsControllerTest < ActionController::TestCase
  setup do
    @rinit = rinits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rinits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rinit" do
    assert_difference('Rinit.count') do
      post :create, rinit: { category: @rinit.category, description: @rinit.description, expiration_date: @rinit.expiration_date, forced_review: @rinit.forced_review, likelihood: @rinit.likelihood, reference: @rinit.reference, review_period: @rinit.review_period, standard: @rinit.standard, title: @rinit.title }
    end

    assert_redirected_to rinit_path(assigns(:rinit))
  end

  test "should show rinit" do
    get :show, id: @rinit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rinit
    assert_response :success
  end

  test "should update rinit" do
    put :update, id: @rinit, rinit: { category: @rinit.category, description: @rinit.description, expiration_date: @rinit.expiration_date, forced_review: @rinit.forced_review, likelihood: @rinit.likelihood, reference: @rinit.reference, review_period: @rinit.review_period, standard: @rinit.standard, title: @rinit.title }
    assert_redirected_to rinit_path(assigns(:rinit))
  end

  test "should destroy rinit" do
    assert_difference('Rinit.count', -1) do
      delete :destroy, id: @rinit
    end

    assert_redirected_to rinits_path
  end
end
