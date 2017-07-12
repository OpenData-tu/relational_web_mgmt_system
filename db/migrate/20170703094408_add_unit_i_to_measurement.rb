class AddUnitIToMeasurement < ActiveRecord::Migration
  def change
  	add_column :measurements, :unit_id, :integer
  	add_column :measurements, :unit_category_id, :integer
  end
end
