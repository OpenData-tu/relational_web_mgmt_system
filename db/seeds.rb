# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |i|
  Sensor.create(name: "Sensor ##{i}")
end
5.times do |i|
  DataSource.create(name: "DataSource ##{i}", desc: "A very special Datasource.")
end
5.times do |i|
  SensorStation.create(name: "SensorStation ##{i}", desc: "A very special Datasource.")
end