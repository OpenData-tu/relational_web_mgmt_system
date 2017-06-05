class DataSource < ActiveRecord::Base
	  has_and_belongs_to_many :sensor_stations
end
