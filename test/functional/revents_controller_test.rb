require 'test_helper'

class ReventsControllerTest < ActionController::TestCase
  setup do
    @revent = revents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:revents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create revent" do
    assert_difference('Revent.count') do
      post :create, revent: { category: @revent.category, description: @revent.description, likelihood: @revent.likelihood, period: @revent.period, probability: @revent.probability, reference: @revent.reference, title: @revent.title }
    end

    assert_redirected_to revent_path(assigns(:revent))
  end

  test "should show revent" do
    get :show, id: @revent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @revent
    assert_response :success
  end

  test "should update revent" do
    put :update, id: @revent, revent: { category: @revent.category, description: @revent.description, likelihood: @revent.likelihood, period: @revent.period, probability: @revent.probability, reference: @revent.reference, title: @revent.title }
    assert_redirected_to revent_path(assigns(:revent))
  end

  test "should destroy revent" do
    assert_difference('Revent.count', -1) do
      delete :destroy, id: @revent
    end

    assert_redirected_to revents_path
  end
end
