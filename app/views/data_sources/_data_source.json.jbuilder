json.extract! data_source, :id, :stil_active, :source_root_url, :startdate, :name, :desc, :license, :created_at, :updated_at
json.url data_source_url(data_source, format: :json)
