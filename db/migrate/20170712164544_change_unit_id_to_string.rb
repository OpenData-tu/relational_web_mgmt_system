class ChangeUnitIdToString < ActiveRecord::Migration
  def change
  	change_column :measurements, :unit_category_id, :string
  	remove_column :measurements, :unit_id
  	add_column :data_sources, :slug, :string
  end
end
