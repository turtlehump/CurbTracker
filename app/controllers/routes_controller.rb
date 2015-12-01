class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :destroy]

  # GET /routes
  def index
    @routes = Route.all
  end

  # GET /routes/1
  def show
    s = @route.start
    e = @route.end
    center_lat = (s.latitude + e.latitude) / 2
    center_long = (s.longitude + e.longitude) / 2
    zoom = 10 #change this
    @map_str = "http://maps.google.com/maps/api/staticmap?size=450x300&sensor=false"
    @map_str = @map_str + "&zoom=#{zoom}"
    @map_str = @map_str + "&center=#{center_lat},#{center_long}"
    @map_str = @map_str + "&markers=color:green%7Clabel:S%7C40.#{s.latitude},#{s.longitude}"  #label S for start
    @map_str = @map_str + "&markers=color:red%7Clabel:E%7C40.#{e.latitude},#{e.longitude}"  #label E for end
    @map_str = @map_str + "&key=AIzaSyCqWQ3TJM2l6Kb-nxSRUURzLy4agP8-9YQ"
  end

  # GET /routes/new
  def new
    @starts = Start.all.map { |s| s if s.user = current_user }
    @ends = End.all.map { |e| e if e.user = current_user }
    @route = Route.new
  end

  # POST /routes
  def create
    @route = Route.new(route_params)

    respond_to do |format|
      if @route.save
        redirect_to @route, notice: 'Route was successfully created.'
      else
        render :new
      end
    end
  end

  # DELETE /routes/1
  def destroy
    @route.destroy
    respond_to do |format|
      redirect_to routes_url, notice: 'Route was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = Route.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_params
      params.require(:route).permit(:start_id, :end_id)
    end
end
