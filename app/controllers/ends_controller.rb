class EndsController < ApplicationController
  before_action :set_end, only: [:show, :edit, :update, :destroy]

  # GET /ends
  def index
    @ends = End.all
  end

  # GET /ends/1
  def show
    @map_str = "http://maps.google.com/maps/api/staticmap?size=450x300&sensor=false&zoom=14&center=#{@end.latitude},#{@end.longitude}&markers=#{@end.latitude},#{@end.longitude}&key=AIzaSyCqWQ3TJM2l6Kb-nxSRUURzLy4agP8-9YQ"
  end

  # GET /ends/new
  def new
    @end = End.new
  end

  # GET /ends/1/edit
  def edit
  end

  # POST /ends
  def create
    @end = End.new(end_params)

    respond_to do |format|
      if @end.save
        format.html { redirect_to @end, notice: 'End was successfully created.' }
        format.json { render :show, status: :created, location: @end }
      else
        format.html { render :new }
        format.json { render json: @end.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ends/1
  def update
    respond_to do |format|
      if @end.update(end_params)
        format.html { redirect_to @end, notice: 'End was successfully updated.' }
        format.json { render :show, status: :ok, location: @end }
      else
        format.html { render :edit }
        format.json { render json: @end.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ends/1
  def destroy
    @end.destroy
    respond_to do |format|
      format.html { redirect_to ends_url, notice: 'End was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_end
      @end = End.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def end_params
      params.require(:end).permit(:name, :description, :address, :elevation, :private, :latitude, :longitude)
    end
end
