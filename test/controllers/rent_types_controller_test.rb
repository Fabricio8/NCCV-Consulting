require 'test_helper'

class RentTypesControllerTest < ActionController::TestCase
  setup do
    @rent_type = rent_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rent_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rent_type" do
    assert_difference('RentType.count') do
      post :create, rent_type: { name: @rent_type.name }
    end

    assert_redirected_to rent_type_path(assigns(:rent_type))
  end

  test "should show rent_type" do
    get :show, id: @rent_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rent_type
    assert_response :success
  end

  test "should update rent_type" do
    patch :update, id: @rent_type, rent_type: { name: @rent_type.name }
    assert_redirected_to rent_type_path(assigns(:rent_type))
  end

  test "should destroy rent_type" do
    assert_difference('RentType.count', -1) do
      delete :destroy, id: @rent_type
    end

    assert_redirected_to rent_types_path
  end
end
