class Api::V1::RouteStopsController < ApplicationController
  before_action :set_route_stop, only: [:show, :update, :destroy]

  # GET /route_stops
  # GET /route_stops.json
  def index
    @route_stops = RouteStop.all
    render json: @route_stops
  end

  # GET /route_stops/1
  # GET /route_stops/1.json
  def show
    render json: @route_stop
  end

  # POST /route_stops
  # POST /route_stops.json
  def create
    @route_stop = RouteStop.new(route_stop_params)

    if @route_stop.save
      render json: @route_stop, status: :created
    else
      render json: @route_stop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /route_stops/1
  # PATCH/PUT /route_stops/1.json
  def update
    if @route_stop.update(route_stop_params)
      render json: @route_stop, status: :ok
    else
      render json: @route_stop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /route_stops/1
  # DELETE /route_stops/1.json
  def destroy
    @route_stop.destroy
    render json: @route_stop, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route_stop
      @route_stop = RouteStop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_stop_params
      params.require(:route_stop).permit(:order)
    end
end
