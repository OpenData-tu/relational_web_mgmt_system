class Measurement < ActiveRecord::Base
	belongs_to :unit
	belongs_to :unit_category
	has_and_belongs_to_many :data_sources
end
