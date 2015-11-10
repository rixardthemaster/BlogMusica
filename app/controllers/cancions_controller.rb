class CancionsController < ApplicationController
  before_action :set_cancion, only: [:show, :edit, :update, :destroy]

  # GET /cancions
  # GET /cancions.json
  def index
    @cancions = Cancion.all
  end

  # GET /cancions/1
  # GET /cancions/1.json
  def show
    @cantantes = @cancion.cantante.all

  end


  # GET /cancions/new
  def new
    @cancion = Cancion.new
  end

  # GET /cancions/1/edit
  def edit
  end

  # POST /cancions
  # POST /cancions.json
  def create
    @cancion = Cancion.new(cancion_params)

    respond_to do |format|
      if @cancion.save
        format.html { redirect_to @cancion, notice: 'Cancion was successfully created.' }
        format.json { render :show, status: :created, location: @cancion }
      else
        format.html { render :new }
        format.json { render json: @cancion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cancions/1
  # PATCH/PUT /cancions/1.json
  def update
    respond_to do |format|
      if @cancion.update(cancion_params)
        format.html { redirect_to @cancion, notice: 'Cancion was successfully updated.' }
        format.json { render :show, status: :ok, location: @cancion }
      else
        format.html { render :edit }
        format.json { render json: @cancion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cancions/1
  # DELETE /cancions/1.json
  def destroy
    @cancion.destroy
    respond_to do |format|
      format.html { redirect_to cancions_url, notice: 'Cancion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cancion
      @cancion = Cancion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cancion_params
      params.require(:cancion).permit(:titulo, :letra, :genero, :cantante_id)
    end
end
