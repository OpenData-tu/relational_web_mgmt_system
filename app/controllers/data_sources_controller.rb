class DataSourcesController < ApplicationController
  before_action :set_data_source, only: [:show, :edit, :update, :destroy, :json_schema, :get_measurements]

  # GET /data_sources
  # GET /data_sources.json
  def get_measurements
    render json: @data_source.measurements
  end

  def index
    @data_sources = DataSource.all
  end

  # GET /data_sources/1
  # GET /data_sources/1.json
  def show
  end

  # GET /data_sources/new
  def new
    @data_source = DataSource.new
  end

  # GET /data_sources/1/edit
  def edit
  end

  # POST /data_sources
  # POST /data_sources.json
  def create
    @data_source = DataSource.new(data_source_params)

    respond_to do |format|
      if @data_source.save
        format.html { redirect_to @data_source, notice: 'Data source was successfully created.' }
        format.json { render :show, status: :created, location: @data_source }
      else
        format.html { render :new }
        format.json { render json: @data_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_sources/1
  # PATCH/PUT /data_sources/1.json
  def update
    respond_to do |format|
      if @data_source.update(data_source_params)
        format.html { redirect_to @data_source, notice: 'Data source was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_source }
      else
        format.html { render :edit }
        format.json { render json: @data_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_sources/1
  # DELETE /data_sources/1.json
  def destroy
    @data_source.destroy
    respond_to do |format|
      format.html { redirect_to data_sources_url, notice: 'Data source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def json_schema
    schema = {
      "$schema": "http://json-schema.org/schema#",
      "title": "Data Source",
      "description": "A Data Source for Open Sensor Data from the CP project at TU Berlin. ",
      "type": "object",
      "properties": {
        "source_id": {"const": @data_source.slug},
        "device": {"type": "string"},
        "timestamp": { "type": "string", "format": "date-time" },
        "timestamp_data": { "type": "string", "format": "date-time" },
        "location": {
          "type": "object",
          "properties": {
            "lat": {"type": "number",
                    "exclusiveMaximum": true,
                    "exclusiveMinimum": true,
                    "maximum": 90,
                    "minimum": -90
                   },
            "lon": {"type": "number",
                    "exclusiveMaximum": true,
                    "exclusiveMinimum": true,
                    "maximum": 180,
                    "minimum": -180,
                   }
          },
        "required": ["lat", "lon"]
        },
        "license": {"type": "string"},
        "sensors": {
          "type": "object",
          "items": [
          {
            "type": "object",
            "properties": {
              "sensor": {"type": "string"},
              "observation_type": {"type": "string"},
              "observation_value": {"type": "number"}
            }
          }]
        }
      },
      "required": ["source_id", "timestamp","sensors", "location", "license"]
  }

  render json: schema
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_source
      @data_source = DataSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_source_params
      params.require(:data_source).permit(:stil_active, :source_root_url, :startdate, :name, :desc, :license, :docker_image_location, :schedule_cron, :slug, :enddate, :measurement_ids => [])
    end
end
