class AddDatasourceSensorMapping < ActiveRecord::Migration
  def change
  	create_join_table :data_sources, :sensors do |t|
      t.index :data_source_id
      t.index :sensor_id
    end
  end
end
