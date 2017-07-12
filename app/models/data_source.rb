class DataSource < ActiveRecord::Base
	  has_and_belongs_to_many :sensor_stations
	  has_and_belongs_to_many :measurements
	  validates_presence_of :name
end
