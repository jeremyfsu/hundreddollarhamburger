class AirportsController < ApplicationController
  before_action :set_airport, only: [:show, :edit, :update, :destroy]

  # GET /airports
  def index
    @airports = Airport.page params[:page]
  end

  # GET /airports/1
  def show
  end

  # GET /airports/new
  def new
    @airport = Airport.new
  end

  # GET /airports/1/edit
  def edit
  end

  # POST /airports
  def create
    @airport = Airport.new(airport_params)

    if @airport.save
      redirect_to @airport, notice: 'Airport was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /airports/1
  def update
    if @airport.update(airport_params)
      redirect_to @airport, notice: 'Airport was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /airports/1
  def destroy
    @airport.destroy
    redirect_to airports_url, notice: 'Airport was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airport
      @airport = Airport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def airport_params
      params.require(:airport).permit(:airport_id, :name, :city, :state, :lat, :lon, :elev)
    end
end
