class Api::V1::TruckRoutesController < ApplicationController
  before_action :set_truck_route, only: [:show, :update, :destroy]

  # GET /truck_routes
  # GET /truck_routes.json
  def index
    @truck_routes = TruckRoute.all
    render json: @truck_routes
  end

  # GET /truck_routes/1
  # GET /truck_routes/1.json
  def show
  end

  # POST /truck_routes
  # POST /truck_routes.json
  def create
    @truck_route = TruckRoute.new(truck_route_params)

    if @truck_route.save
      render :show, status: :created, location: @truck_route
    else
      render json: @truck_route.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /truck_routes/1
  # PATCH/PUT /truck_routes/1.json
  def update
    if @truck_route.update(truck_route_params)
      render :show, status: :ok, location: @truck_route
    else
      render json: @truck_route.errors, status: :unprocessable_entity
    end
  end

  # DELETE /truck_routes/1
  # DELETE /truck_routes/1.json
  def destroy
    @truck_route.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck_route
      @truck_route = TruckRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_route_params
      params.fetch(:truck_route, {})
    end
end
