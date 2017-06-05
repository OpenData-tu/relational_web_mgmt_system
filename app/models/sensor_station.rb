class SensorStation < ActiveRecord::Base
	has_and_belongs_to_many :data_sources
	has_and_belongs_to_many :sensors
end
