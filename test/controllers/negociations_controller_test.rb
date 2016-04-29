require 'test_helper'

class NegociationsControllerTest < ActionController::TestCase
  setup do
    @negociation = negociations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:negociations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create negociation" do
    assert_difference('Negociation.count') do
      post :create, negociation: { DDD: @negociation.DDD, celular: @negociation.celular, description: @negociation.description, email: @negociation.email, name: @negociation.name, subject: @negociation.subject }
    end

    assert_redirected_to negociation_path(assigns(:negociation))
  end

  test "should show negociation" do
    get :show, id: @negociation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @negociation
    assert_response :success
  end

  test "should update negociation" do
    patch :update, id: @negociation, negociation: { DDD: @negociation.DDD, celular: @negociation.celular, description: @negociation.description, email: @negociation.email, name: @negociation.name, subject: @negociation.subject }
    assert_redirected_to negociation_path(assigns(:negociation))
  end

  test "should destroy negociation" do
    assert_difference('Negociation.count', -1) do
      delete :destroy, id: @negociation
    end

    assert_redirected_to negociations_path
  end
end
