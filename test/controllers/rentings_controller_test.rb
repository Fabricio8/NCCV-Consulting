require 'test_helper'

class RentingsControllerTest < ActionController::TestCase
  setup do
    @renting = rentings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rentings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create renting" do
    assert_difference('Renting.count') do
      post :create, renting: { cost: @renting.cost, end_date: @renting.end_date, end_hour: @renting.end_hour, garage_id: @renting.garage_id, name: @renting.name, start_date: @renting.start_date, start_hour: @renting.start_hour, state: @renting.state }
    end

    assert_redirected_to renting_path(assigns(:renting))
  end

  test "should show renting" do
    get :show, id: @renting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @renting
    assert_response :success
  end

  test "should update renting" do
    patch :update, id: @renting, renting: { cost: @renting.cost, end_date: @renting.end_date, end_hour: @renting.end_hour, garage_id: @renting.garage_id, name: @renting.name, start_date: @renting.start_date, start_hour: @renting.start_hour, state: @renting.state }
    assert_redirected_to renting_path(assigns(:renting))
  end

  test "should destroy renting" do
    assert_difference('Renting.count', -1) do
      delete :destroy, id: @renting
    end

    assert_redirected_to rentings_path
  end
end
