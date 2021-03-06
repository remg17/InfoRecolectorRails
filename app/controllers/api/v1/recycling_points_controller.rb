class Api::V1::RecyclingPointsController < ApplicationController
  before_action :set_recycling_point, only: [:show, :update, :destroy]

  # GET /recycling_points
  # GET /recycling_points.json
  def index
    @recycling_points = RecyclingPoint.all
    render json: @recycling_points
  end

  # GET /recycling_points/1
  # GET /recycling_points/1.json
  def show
    render json: @recycling_point
  end
  # POST /recycling_points
  # POST /recycling_points.json
  def create
    @recycling_point = RecyclingPoint.new(recycling_point_params)

    if @recycling_point.save
      render json:  @recycling_point, status: :created
    else
      render json: @recycling_point.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recycling_points/1
  # PATCH/PUT /recycling_points/1.json
  def update
    if @recycling_point.update(recycling_point_params)
      render json: @recycling_point, status: :ok
    else
      render json: @recycling_point.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recycling_points/1
  # DELETE /recycling_points/1.json
  def destroy
    @recycling_point.destroy
    render json: @recycling_point, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recycling_point
      @recycling_point = RecyclingPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recycling_point_params
      params.require(:recycling_point).permit(:name, :location, :latitude, :longitude)
    end
end
