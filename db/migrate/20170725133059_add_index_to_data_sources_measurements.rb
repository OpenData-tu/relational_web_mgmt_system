class AddIndexToDataSourcesMeasurements < ActiveRecord::Migration
  def change
	add_index :data_sources_measurements, :data_source_id  	
	add_index :data_sources_measurements, :measurement_id  	
  end
end
