class CantanteCancionsController < ApplicationController
  before_action :set_cantante_cancion, only: [:show, :edit, :update, :destroy]

  # GET /cantante_cancions
  # GET /cantante_cancions.json
  def index
    @cantante_cancions = CantanteCancion.all
  end

  # GET /cantante_cancions/1
  # GET /cantante_cancions/1.json
  def show
  end

  # GET /cantante_cancions/new
  def new
    @cantante_cancion = CantanteCancion.new
  end

  # GET /cantante_cancions/1/edit
  def edit
  end

  # POST /cantante_cancions
  # POST /cantante_cancions.json
  def create
    @cantante_cancion = CantanteCancion.new(cantante_cancion_params)

    respond_to do |format|
      if @cantante_cancion.save
        format.html { redirect_to @cantante_cancion, notice: 'Cantante cancion was successfully created.' }
        format.json { render :show, status: :created, location: @cantante_cancion }
      else
        format.html { render :new }
        format.json { render json: @cantante_cancion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cantante_cancions/1
  # PATCH/PUT /cantante_cancions/1.json
  def update
    respond_to do |format|
      if @cantante_cancion.update(cantante_cancion_params)
        format.html { redirect_to @cantante_cancion, notice: 'Cantante cancion was successfully updated.' }
        format.json { render :show, status: :ok, location: @cantante_cancion }
      else
        format.html { render :edit }
        format.json { render json: @cantante_cancion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cantante_cancions/1
  # DELETE /cantante_cancions/1.json
  def destroy
    @cantante_cancion.destroy
    respond_to do |format|
      format.html { redirect_to cantante_cancions_url, notice: 'Cantante cancion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cantante_cancion
      @cantante_cancion = CantanteCancion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cantante_cancion_params
      params.require(:cantante_cancion).permit(:cantante_id, :cancion_id)
    end
end
