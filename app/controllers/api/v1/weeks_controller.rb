class WeeksController < ApplicationController
  before_action :set_week, only: [:show, :update, :destroy]

  # GET /weeks
  # GET /weeks.json
  def index
    @weeks = Week.all
  end

  # GET /weeks/1
  # GET /weeks/1.json
  def show
  end

  # POST /weeks
  # POST /weeks.json
  def create
    @week = Week.new(week_params)

    if @week.save
      render :show, status: :created, location: @week
    else
      render json: @week.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /weeks/1
  # PATCH/PUT /weeks/1.json
  def update
    if @week.update(week_params)
      render :show, status: :ok, location: @week
    else
      render json: @week.errors, status: :unprocessable_entity
    end
  end

  # DELETE /weeks/1
  # DELETE /weeks/1.json
  def destroy
    @week.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week
      @week = Week.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def week_params
      params.require(:week).permit(:day)
    end
end
