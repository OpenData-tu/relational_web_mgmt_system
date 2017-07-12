class AddColumnsToMeasurementJoinTable < ActiveRecord::Migration
  def change
  	add_column :measurements_data_sources, :data_source_id, :integer
  	add_column :measurements_data_sources, :measurement_id, :integer

  end
end
