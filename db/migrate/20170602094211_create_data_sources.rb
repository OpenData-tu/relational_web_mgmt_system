class CreateDataSources < ActiveRecord::Migration
  def change
    create_table :data_sources do |t|
      t.boolean :stil_active
      t.string :source_root_url
      t.datetime :startdate
      t.string :name
      t.string :desc
      t.string :license

      t.timestamps null: false
    end
  end
end
