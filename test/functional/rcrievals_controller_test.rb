require 'test_helper'

class RcrievalsControllerTest < ActionController::TestCase
  setup do
    @rcrieval = rcrievals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rcrievals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rcrieval" do
    assert_difference('Rcrieval.count') do
      post :create, rcrieval: { category: @rcrieval.category, description: @rcrieval.description, exp_ans_type: @rcrieval.exp_ans_type, exp_for_eval: @rcrieval.exp_for_eval, reference: @rcrieval.reference }
    end

    assert_redirected_to rcrieval_path(assigns(:rcrieval))
  end

  test "should show rcrieval" do
    get :show, id: @rcrieval
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rcrieval
    assert_response :success
  end

  test "should update rcrieval" do
    put :update, id: @rcrieval, rcrieval: { category: @rcrieval.category, description: @rcrieval.description, exp_ans_type: @rcrieval.exp_ans_type, exp_for_eval: @rcrieval.exp_for_eval, reference: @rcrieval.reference }
    assert_redirected_to rcrieval_path(assigns(:rcrieval))
  end

  test "should destroy rcrieval" do
    assert_difference('Rcrieval.count', -1) do
      delete :destroy, id: @rcrieval
    end

    assert_redirected_to rcrievals_path
  end
end
