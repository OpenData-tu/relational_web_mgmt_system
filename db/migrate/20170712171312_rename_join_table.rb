class RenameJoinTable < ActiveRecord::Migration
  def change
  	rename_table :measurements_data_sources, :data_sources_measurements
  end
end
