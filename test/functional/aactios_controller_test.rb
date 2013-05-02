require 'test_helper'

class AactiosControllerTest < ActionController::TestCase
  setup do
    @aactio = aactios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aactios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aactio" do
    assert_difference('Aactio.count') do
      post :create, aactio: { ClosedDate: @aactio.ClosedDate, Descriptions: @aactio.Descriptions, DueDate: @aactio.DueDate, ExternalReference: @aactio.ExternalReference, Recommendations: @aactio.Recommendations, Refernce: @aactio.Refernce, Title: @aactio.Title, status: @aactio.status }
    end

    assert_redirected_to aactio_path(assigns(:aactio))
  end

  test "should show aactio" do
    get :show, id: @aactio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aactio
    assert_response :success
  end

  test "should update aactio" do
    put :update, id: @aactio, aactio: { ClosedDate: @aactio.ClosedDate, Descriptions: @aactio.Descriptions, DueDate: @aactio.DueDate, ExternalReference: @aactio.ExternalReference, Recommendations: @aactio.Recommendations, Refernce: @aactio.Refernce, Title: @aactio.Title, status: @aactio.status }
    assert_redirected_to aactio_path(assigns(:aactio))
  end

  test "should destroy aactio" do
    assert_difference('Aactio.count', -1) do
      delete :destroy, id: @aactio
    end

    assert_redirected_to aactios_path
  end
end
