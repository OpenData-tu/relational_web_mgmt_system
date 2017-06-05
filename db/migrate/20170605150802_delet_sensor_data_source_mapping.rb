class DeletSensorDataSourceMapping < ActiveRecord::Migration
  def change
  	drop_table :data_sources_sensors
  end
end
