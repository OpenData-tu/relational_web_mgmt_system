class CreateSensorStations < ActiveRecord::Migration
  def change
    create_table :sensor_stations do |t|
      t.string :name
      t.string :desc
      t.float :lat
      t.float :lng

      t.timestamps null: false
    end
  end
end
