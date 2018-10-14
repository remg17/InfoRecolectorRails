class Api::V1::RoutesController < ApplicationController
  before_action :set_route, only: [:show, :update, :destroy]

  # GET /routes
  # GET /routes.json
  def index
    @routes = Route.all
    render json: @routes
  end

  # GET /routes/1
  # GET /routes/1.json
  def show
    render json: @route
  end

  # POST /routes
  # POST /routes.json
  def create
    @route = Route.new(route_params)

    if @route.save
      render json: @route, status: :created
    else
      render json: @route.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /routes/1
  # PATCH/PUT /routes/1.json
  def update
    if @route.update(route_params)
      render json: @route, status: :ok
    else
      render json: @route.errors, status: :unprocessable_entity
    end
  end

  # DELETE /routes/1
  # DELETE /routes/1.json
  def destroy
    @route.destroy
    render json: @route, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = Route.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_params
      params.require(:route).permit(:name)
    end
end
