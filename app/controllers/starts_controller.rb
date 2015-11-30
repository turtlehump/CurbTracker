class StartsController < ApplicationController
  before_action :set_start, only: [:show, :edit, :update, :destroy]

  # GET /starts
  def index
    @starts = Start.all
  end

  # GET /starts/1
  def show
    @map_str = "http://maps.google.com/maps/api/staticmap?size=450x300&sensor=false&zoom=14&center=#{@start.latitude},#{@start.longitude}&markers=#{@start.latitude},#{@start.longitude}&key=AIzaSyCqWQ3TJM2l6Kb-nxSRUURzLy4agP8-9YQ"
  end

  # GET /starts/new
  def new
    @start = Start.new
  end

  # GET /starts/1/edit
  def edit
  end

  # POST /starts
  def create
    @start = Start.new(start_params)

    respond_to do |format|
      if @start.save
        redirect_to @start, notice: 'Start was successfully created.'
      else
        render :new
      end
    end
  end

  # PATCH/PUT /starts/1
  def update
    respond_to do |format|
      if @start.update(start_params)
        redirect_to @start, notice: 'Start was successfully updated.'
      else
        render :edit
      end
    end
  end

  # DELETE /starts/1
  def destroy
    @start.destroy
    respond_to do |format|
      redirect_to starts_url, notice: 'Start was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_start
      @start = Start.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def start_params
      params.require(:start).permit(:name, :description, :address, :elevation, :latitude, :longitude)
    end
end
