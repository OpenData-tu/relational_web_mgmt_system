class AddFieldsToDatasource < ActiveRecord::Migration
  def change
  	add_column :data_sources, :docker_image_location, :string
  	add_column :data_sources, :schedule_cron, :string

  end
end
