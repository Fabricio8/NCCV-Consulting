require 'test_helper'

class TypeGaragesControllerTest < ActionController::TestCase
  setup do
    @type_garage = type_garages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_garages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_garage" do
    assert_difference('TypeGarage.count') do
      post :create, type_garage: { Des_typegarage: @type_garage.Des_typegarage, no_ceiling: @type_garage.no_ceiling, yes_ceiling: @type_garage.yes_ceiling }
    end

    assert_redirected_to type_garage_path(assigns(:type_garage))
  end

  test "should show type_garage" do
    get :show, id: @type_garage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_garage
    assert_response :success
  end

  test "should update type_garage" do
    patch :update, id: @type_garage, type_garage: { Des_typegarage: @type_garage.Des_typegarage, no_ceiling: @type_garage.no_ceiling, yes_ceiling: @type_garage.yes_ceiling }
    assert_redirected_to type_garage_path(assigns(:type_garage))
  end

  test "should destroy type_garage" do
    assert_difference('TypeGarage.count', -1) do
      delete :destroy, id: @type_garage
    end

    assert_redirected_to type_garages_path
  end
end
