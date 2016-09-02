require 'test_helper'

class NegotiationsControllerTest < ActionController::TestCase
  setup do
    @negotiation = negotiations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:negotiations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create negotiation" do
    assert_difference('Negotiation.count') do
      post :create, negotiation: { celular: @negotiation.celular, description: @negotiation.description, email: @negotiation.email, name: @negotiation.name, subject: @negotiation.subject }
    end

    assert_redirected_to negotiation_path(assigns(:negotiation))
  end

  test "should show negotiation" do
    get :show, id: @negotiation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @negotiation
    assert_response :success
  end

  test "should update negotiation" do
    patch :update, id: @negotiation, negotiation: { celular: @negotiation.celular, description: @negotiation.description, email: @negotiation.email, name: @negotiation.name, subject: @negotiation.subject }
    assert_redirected_to negotiation_path(assigns(:negotiation))
  end

  test "should destroy negotiation" do
    assert_difference('Negotiation.count', -1) do
      delete :destroy, id: @negotiation
    end

    assert_redirected_to negotiations_path
  end
end
