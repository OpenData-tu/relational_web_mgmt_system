class AddEnddateToDatasource < ActiveRecord::Migration
  def change
  	add_column :data_sources, :enddate, :datetime
  end
end
