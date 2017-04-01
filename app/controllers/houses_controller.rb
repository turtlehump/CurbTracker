class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update, :destroy]

  # GET /houses
  def index
    @houses = House.all.map {|h| h if h.user == current_user }
    #@showing_houses = @houses.map { |h| h if h.paid == false}
    @showing_houses = @houses
    @running_lat = 0
    @running_long = 0
    @showing_houses.each { |h|
      @running_lat = @running_lat + h.latitude
      @running_long = @running_long + h.longitude
    }
    if @showing_houses.size > 0
      @center_lat = @running_lat / @showing_houses.size
      @center_long = @running_long / @showing_houses.size
      @map_str = "http://maps.google.com/maps/api/staticmap?size=450x300&sensor=false&zoom=14"
      @map_str = @map_str + "&center=#{@center_lat},#{@center_long}"
      @showing_houses.each { |sh|
        @map_str = @map_str + "&markers=#{sh.latitude},#{sh.longitude}"
      }
      @map_str = @map_str + "&key=AIzaSyCqWQ3TJM2l6Kb-nxSRUURzLy4agP8-9YQ"
    else
      @map_str = ""
    end
  end

  # GET /houses/1
  def show
    @map_str = "http://maps.google.com/maps/api/staticmap?size=450x300&sensor=false&zoom=14&center=#{@house.latitude},#{@house.longitude}&markers=#{@house.latitude},#{@house.longitude}&key=AIzaSyCqWQ3TJM2l6Kb-nxSRUURzLy4agP8-9YQ"
  end

  # GET /houses/new
  def new
    @house = House.new
  end

  # GET /houses/1/edit
  def edit
  end

  # POST /houses
  def create
    @house = House.new(house_params)
    @house.user = current_user

    if @house.save
      redirect_to @house, notice: 'House was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /houses/1
  def update
    if @house.update(house_params)
      redirect_to @house, notice: 'House was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /houses/1
  def destroy
    @house.destroy
    redirect_to houses_url, notice: 'House was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = House.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def house_params
      params.require(:house).permit(:address)
    end
end
