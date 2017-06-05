require 'test_helper'

class SensorStationsControllerTest < ActionController::TestCase
  setup do
    @sensor_station = sensor_stations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sensor_stations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sensor_station" do
    assert_difference('SensorStation.count') do
      post :create, sensor_station: { desc: @sensor_station.desc, lat: @sensor_station.lat, lng: @sensor_station.lng, name: @sensor_station.name }
    end

    assert_redirected_to sensor_station_path(assigns(:sensor_station))
  end

  test "should show sensor_station" do
    get :show, id: @sensor_station
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sensor_station
    assert_response :success
  end

  test "should update sensor_station" do
    patch :update, id: @sensor_station, sensor_station: { desc: @sensor_station.desc, lat: @sensor_station.lat, lng: @sensor_station.lng, name: @sensor_station.name }
    assert_redirected_to sensor_station_path(assigns(:sensor_station))
  end

  test "should destroy sensor_station" do
    assert_difference('SensorStation.count', -1) do
      delete :destroy, id: @sensor_station
    end

    assert_redirected_to sensor_stations_path
  end
end
