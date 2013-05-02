require 'test_helper'

class PinitsControllerTest < ActionController::TestCase
  setup do
    @pinit = pinits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pinits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pinit" do
    assert_difference('Pinit.count') do
      post :create, pinit: { area: @pinit.area, author: @pinit.author, class: @pinit.class, description: @pinit.description, keyword: @pinit.keyword, name: @pinit.name, publishdate: @pinit.publishdate, revision: @pinit.revision, type: @pinit.type, version: @pinit.version }
    end

    assert_redirected_to pinit_path(assigns(:pinit))
  end

  test "should show pinit" do
    get :show, id: @pinit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pinit
    assert_response :success
  end

  test "should update pinit" do
    put :update, id: @pinit, pinit: { area: @pinit.area, author: @pinit.author, class: @pinit.class, description: @pinit.description, keyword: @pinit.keyword, name: @pinit.name, publishdate: @pinit.publishdate, revision: @pinit.revision, type: @pinit.type, version: @pinit.version }
    assert_redirected_to pinit_path(assigns(:pinit))
  end

  test "should destroy pinit" do
    assert_difference('Pinit.count', -1) do
      delete :destroy, id: @pinit
    end

    assert_redirected_to pinits_path
  end
end
