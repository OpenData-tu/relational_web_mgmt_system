class SensorStationsController < ApplicationController
  before_action :set_sensor_station, only: [:show, :edit, :update, :destroy]

  # GET /sensor_stations
  # GET /sensor_stations.json
  def index
    @sensor_stations = SensorStation.all
  end

  # GET /sensor_stations/1
  # GET /sensor_stations/1.json
  def show
  end

  # GET /sensor_stations/new
  def new
    @sensor_station = SensorStation.new
  end

  # GET /sensor_stations/1/edit
  def edit
  end

  # POST /sensor_stations
  # POST /sensor_stations.json
  def create
    @sensor_station = SensorStation.new(sensor_station_params)

    respond_to do |format|
      if @sensor_station.save
        format.html { redirect_to @sensor_station, notice: 'Sensor station was successfully created.' }
        format.json { render :show, status: :created, location: @sensor_station }
      else
        format.html { render :new }
        format.json { render json: @sensor_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensor_stations/1
  # PATCH/PUT /sensor_stations/1.json
  def update
    respond_to do |format|
      if @sensor_station.update(sensor_station_params)
        format.html { redirect_to @sensor_station, notice: 'Sensor station was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor_station }
      else
        format.html { render :edit }
        format.json { render json: @sensor_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensor_stations/1
  # DELETE /sensor_stations/1.json
  def destroy
    @sensor_station.destroy
    respond_to do |format|
      format.html { redirect_to sensor_stations_url, notice: 'Sensor station was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor_station
      @sensor_station = SensorStation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sensor_station_params
      params.require(:sensor_station).permit(:name, :desc, :lat, :lng, :sensor_ids => [])
    end
end
