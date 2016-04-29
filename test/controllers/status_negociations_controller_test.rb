require 'test_helper'

class StatusNegociationsControllerTest < ActionController::TestCase
  setup do
    @status_negociation = status_negociations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_negociations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_negociation" do
    assert_difference('StatusNegociation.count') do
      post :create, status_negociation: { descriptionNegociation: @status_negociation.descriptionNegociation, firstNegociator: @status_negociation.firstNegociator, linkProposta: @status_negociation.linkProposta, log: @status_negociation.log, secondNegociator: @status_negociation.secondNegociator, status: @status_negociation.status }
    end

    assert_redirected_to status_negociation_path(assigns(:status_negociation))
  end

  test "should show status_negociation" do
    get :show, id: @status_negociation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_negociation
    assert_response :success
  end

  test "should update status_negociation" do
    patch :update, id: @status_negociation, status_negociation: { descriptionNegociation: @status_negociation.descriptionNegociation, firstNegociator: @status_negociation.firstNegociator, linkProposta: @status_negociation.linkProposta, log: @status_negociation.log, secondNegociator: @status_negociation.secondNegociator, status: @status_negociation.status }
    assert_redirected_to status_negociation_path(assigns(:status_negociation))
  end

  test "should destroy status_negociation" do
    assert_difference('StatusNegociation.count', -1) do
      delete :destroy, id: @status_negociation
    end

    assert_redirected_to status_negociations_path
  end
end
