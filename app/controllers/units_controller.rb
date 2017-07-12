class UnitsController < ApplicationController
  before_action :set_unit, only: [:show, :edit, :update, :destroy]

  # GET /unit
  # GET /unit.json
  def index
    @units = Unit.all
  end

  # GET /unit/1
  # GET /unit/1.json
  def show
  end

  # GET /unit/new
  # def new
  #   @unit = Unit.new
  # end

  # # GET /unit/1/edit
  # def edit
  # end

  # # POST /unit
  # # POST /unit.json
  # def create
  #   @unit = Unit.new(unit_params)

  #   respond_to do |format|
  #     if @unit.save
  #       format.html { redirect_to @unit, notice: 'unit was successfully created.' }
  #       format.json { render :show, status: :created, location: @unit }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @unit.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /unit/1
  # # PATCH/PUT /unit/1.json
  # def update
  #   respond_to do |format|
  #     if @unit.update(unit_params)
  #       format.html { redirect_to @unit, notice: 'unit was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @unit }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @unit.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /unit/1
  # # DELETE /unit/1.json
  # def destroy
  #   @unit.destroy
  #   respond_to do |format|
  #     format.html { redirect_to unit_url, notice: 'unit was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit
      @unit = Unit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_params
      params.require(:unit).permit(:name)
    end
end
