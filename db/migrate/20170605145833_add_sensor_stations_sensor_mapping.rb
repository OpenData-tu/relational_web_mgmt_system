class AddSensorStationsSensorMapping < ActiveRecord::Migration
  def change
  	create_join_table :sensors, :sensor_stations do |t|
      t.index :sensor_station_id
      t.index :sensor_id
    end
    create_join_table :data_sources, :sensor_stations do |t|
      t.index :sensor_station_id
      t.index :data_source_id
    end
  end
end
