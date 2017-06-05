json.extract! sensor_station, :id, :name, :desc, :lat, :lng, :created_at, :updated_at
json.url sensor_station_url(sensor_station, format: :json)
