require 'test_helper'

class GaragesControllerTest < ActionController::TestCase
  setup do
    @garage = garages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:garages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garage" do
    assert_difference('Garage.count') do
      post :create, garage: { accuracy: @garage.accuracy, address: @garage.address, dimension: @garage.dimension, district_id: @garage.district_id, latitude: @garage.latitude, length: @garage.length, location: @garage.location, name: @garage.name, observation: @garage.observation, profile_id: @garage.profile_id, reference: @garage.reference }
    end

    assert_redirected_to garage_path(assigns(:garage))
  end

  test "should show garage" do
    get :show, id: @garage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @garage
    assert_response :success
  end

  test "should update garage" do
    patch :update, id: @garage, garage: { accuracy: @garage.accuracy, address: @garage.address, dimension: @garage.dimension, district_id: @garage.district_id, latitude: @garage.latitude, length: @garage.length, location: @garage.location, name: @garage.name, observation: @garage.observation, profile_id: @garage.profile_id, reference: @garage.reference }
    assert_redirected_to garage_path(assigns(:garage))
  end

  test "should destroy garage" do
    assert_difference('Garage.count', -1) do
      delete :destroy, id: @garage
    end

    assert_redirected_to garages_path
  end
end
