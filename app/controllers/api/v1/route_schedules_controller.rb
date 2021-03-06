class Api::V1::RouteSchedulesController < ApplicationController
  before_action :set_route_schedule, only: [:show, :update, :destroy]

  # GET /route_schedules
  # GET /route_schedules.json
  def index
    @route_schedules = RouteSchedule.all
    render json: @route_schedules
  end

  # GET /route_schedules/1
  # GET /route_schedules/1.json
  def show
    render json: @route_schedule
  end

  # POST /route_schedules
  # POST /route_schedules.json
  def create
    @route_schedule = RouteSchedule.new(route_schedule_params)

    if @route_schedule.save
      render json: @route_schedule, status: :created
    else
      render json: @route_schedule.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /route_schedules/1
  # PATCH/PUT /route_schedules/1.json
  def update
    if @route_schedule.update(route_schedule_params)
      render json: @route_schedule, status: :ok      
    else
      render json: @route_schedule.errors, status: :unprocessable_entity
    end
  end

  # DELETE /route_schedules/1
  # DELETE /route_schedules/1.json
  def destroy
    @route_schedule.destroy
    render json: @route_schedule
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route_schedule
      @route_schedule = RouteSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_schedule_params
      params.require(:route_schedule).permit(:timStart, :timEnd)
    end
end
