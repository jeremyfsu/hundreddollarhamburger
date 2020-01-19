class HamburgersController < ApplicationController
  before_action :set_hamburger, only: [:show, :edit, :update, :destroy]

  # GET /hamburgers
  def index
    @hamburgers = Hamburger.all
  end

  # GET /hamburgers/1
  def show
  end

  # GET /hamburgers/new
  def new
    @hamburger = Hamburger.new
  end

  # GET /hamburgers/1/edit
  def edit
  end

  # POST /hamburgers
  def create
    @hamburger = Hamburger.new(hamburger_params)

    if @hamburger.save
      redirect_to @hamburger, notice: 'Hamburger was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /hamburgers/1
  def update
    if @hamburger.update(hamburger_params)
      redirect_to @hamburger, notice: 'Hamburger was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /hamburgers/1
  def destroy
    @hamburger.destroy
    redirect_to hamburgers_url, notice: 'Hamburger was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hamburger
      @hamburger = Hamburger.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hamburger_params
      params.require(:hamburger).permit(:airport_id, :name, :notes, :website)
    end
end
