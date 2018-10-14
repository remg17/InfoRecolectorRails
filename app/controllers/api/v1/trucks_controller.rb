class Api::V1::TrucksController < ApplicationController
  before_action :set_truck, only: [:show, :update, :destroy]

  # GET /trucks
  # GET /trucks.json
  def index
    @trucks = Truck.all
    render json: @trucks
  end

  # GET /trucks/1
  # GET /trucks/1.json
  def show
    render json: @truck  
  end

  # POST /trucks
  # POST /trucks.json
  def create
    @truck = Truck.new(truck_params)

    if @truck.save
      render json: @truck, status: :created
    else
      render json: @truck.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trucks/1
  # PATCH/PUT /trucks/1.json
  def update
    if @truck.update(truck_params)
      render json: @truck, status: :ok
    else
      render json: @truck.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trucks/1
  # DELETE /trucks/1.json
  def destroy
    @truck.destroy
    render json: @truck, status: :ok    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck
      @truck = Truck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_params
      params.require(:truck).permit(:name, :licensePlate)
    end
end
