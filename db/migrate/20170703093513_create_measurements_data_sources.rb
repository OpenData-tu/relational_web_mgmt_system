class CreateMeasurementsDataSources < ActiveRecord::Migration
  def change
    create_table :measurements_data_sources do |t|

      t.timestamps null: false
    end
  end
end
