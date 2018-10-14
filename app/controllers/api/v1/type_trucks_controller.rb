class Api::V1::TypeTrucksController < ApplicationController
  before_action :set_type_truck, only: [:show, :update, :destroy]

  # GET /type_trucks
  # GET /type_trucks.json
  def index
    @type_trucks = TypeTruck.all
    render json: @type_trucks
  end

  # GET /type_trucks/1
  # GET /type_trucks/1.json
  def show
    render json: @type_truck    
  end

  # POST /type_trucks
  # POST /type_trucks.json
  def create
    @type_truck = TypeTruck.new(type_truck_params)

    if @type_truck.save
      render json: @type_truck, status: :created
    else
      render json: @type_truck.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /type_trucks/1
  # PATCH/PUT /type_trucks/1.json
  def update
    if @type_truck.update(type_truck_params)
      render json: @type_truck, status: :ok
    else
      render json: @type_truck.errors, status: :unprocessable_entity
    end
  end

  # DELETE /type_trucks/1
  # DELETE /type_trucks/1.json
  def destroy
    @type_truck.destroy
    render json: @type_truck, status: :ok    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_truck
      @type_truck = TypeTruck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_truck_params
      params.require(:type_truck).permit(:name, :description)
    end
end
