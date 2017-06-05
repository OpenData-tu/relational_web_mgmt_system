require 'test_helper'

class DataSourcesControllerTest < ActionController::TestCase
  setup do
    @data_source = data_sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_source" do
    assert_difference('DataSource.count') do
      post :create, data_source: { desc: @data_source.desc, license: @data_source.license, name: @data_source.name, source_root_url: @data_source.source_root_url, startdate: @data_source.startdate, stil_active: @data_source.stil_active }
    end

    assert_redirected_to data_source_path(assigns(:data_source))
  end

  test "should show data_source" do
    get :show, id: @data_source
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_source
    assert_response :success
  end

  test "should update data_source" do
    patch :update, id: @data_source, data_source: { desc: @data_source.desc, license: @data_source.license, name: @data_source.name, source_root_url: @data_source.source_root_url, startdate: @data_source.startdate, stil_active: @data_source.stil_active }
    assert_redirected_to data_source_path(assigns(:data_source))
  end

  test "should destroy data_source" do
    assert_difference('DataSource.count', -1) do
      delete :destroy, id: @data_source
    end

    assert_redirected_to data_sources_path
  end
end
