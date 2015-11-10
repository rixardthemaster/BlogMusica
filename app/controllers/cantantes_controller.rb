class CantantesController < ApplicationController
  before_action :set_cantante, only: [:show, :edit, :update, :destroy]

  # GET /cantantes
  # GET /cantantes.json
  def index
    @cantantes = Cantante.all
  end

  # GET /cantantes/1
  # GET /cantantes/1.json
  def show
    @cancions = @cantante.cancion.all
  end

  # GET /cantantes/new
  def new
    @cantante = Cantante.new
  end

  # GET /cantantes/1/edit
  def edit
  end

  # POST /cantantes
  # POST /cantantes.json
  def create
    @cantante = Cantante.new(cantante_params)

    respond_to do |format|
      if @cantante.save
        format.html { redirect_to @cantante, notice: 'Cantante was successfully created.' }
        format.json { render :show, status: :created, location: @cantante }
      else
        format.html { render :new }
        format.json { render json: @cantante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cantantes/1
  # PATCH/PUT /cantantes/1.json
  def update
    respond_to do |format|
      if @cantante.update(cantante_params)
        format.html { redirect_to @cantante, notice: 'Cantante was successfully updated.' }
        format.json { render :show, status: :ok, location: @cantante }
      else
        format.html { render :edit }
        format.json { render json: @cantante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cantantes/1
  # DELETE /cantantes/1.json
  def destroy
    @cantante.destroy
    respond_to do |format|
      format.html { redirect_to cantantes_url, notice: 'Cantante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cantante
      @cantante = Cantante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cantante_params
      params.require(:cantante).permit(:nombre, :genero, :pais)
    end
end
