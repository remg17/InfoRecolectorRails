class RecyclingPointsController < ApplicationController
  before_action :set_recycling_point, only: [:show, :update, :destroy]

  # GET /recycling_points
  # GET /recycling_points.json
  def index
    @recycling_points = RecyclingPoint.all
  end

  # GET /recycling_points/1
  # GET /recycling_points/1.json
  def show
  end

  # POST /recycling_points
  # POST /recycling_points.json
  def create
    @recycling_point = RecyclingPoint.new(recycling_point_params)

    if @recycling_point.save
      render :show, status: :created, location: @recycling_point
    else
      render json: @recycling_point.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recycling_points/1
  # PATCH/PUT /recycling_points/1.json
  def update
    if @recycling_point.update(recycling_point_params)
      render :show, status: :ok, location: @recycling_point
    else
      render json: @recycling_point.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recycling_points/1
  # DELETE /recycling_points/1.json
  def destroy
    @recycling_point.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recycling_point
      @recycling_point = RecyclingPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recycling_point_params
      params.require(:recycling_point).permit(:name, :location, :latitude, :longitud)
    end
end
