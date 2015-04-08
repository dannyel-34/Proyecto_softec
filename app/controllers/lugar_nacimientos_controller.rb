class LugarNacimientosController < ApplicationController
  before_action :set_lugar_nacimiento, only: [:show, :edit, :update, :destroy]

  # GET /lugar_nacimientos
  # GET /lugar_nacimientos.json
  def index
    @lugar_nacimientos = LugarNacimiento.all
  end

  # GET /lugar_nacimientos/1
  # GET /lugar_nacimientos/1.json
  def show
  end

  # GET /lugar_nacimientos/new
  def new
    @lugar_nacimiento = LugarNacimiento.new
  end

  # GET /lugar_nacimientos/1/edit
  def edit
  end

  # POST /lugar_nacimientos
  # POST /lugar_nacimientos.json
  def create
    @lugar_nacimiento = LugarNacimiento.new(lugar_nacimiento_params)

    respond_to do |format|
      if @lugar_nacimiento.save
        format.html { redirect_to @lugar_nacimiento, notice: 'Lugar nacimiento was successfully created.' }
        format.json { render :show, status: :created, location: @lugar_nacimiento }
      else
        format.html { render :new }
        format.json { render json: @lugar_nacimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lugar_nacimientos/1
  # PATCH/PUT /lugar_nacimientos/1.json
  def update
    respond_to do |format|
      if @lugar_nacimiento.update(lugar_nacimiento_params)
        format.html { redirect_to @lugar_nacimiento, notice: 'Lugar nacimiento was successfully updated.' }
        format.json { render :show, status: :ok, location: @lugar_nacimiento }
      else
        format.html { render :edit }
        format.json { render json: @lugar_nacimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lugar_nacimientos/1
  # DELETE /lugar_nacimientos/1.json
  def destroy
    @lugar_nacimiento.destroy
    respond_to do |format|
      format.html { redirect_to lugar_nacimientos_url, notice: 'Lugar nacimiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lugar_nacimiento
      @lugar_nacimiento = LugarNacimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lugar_nacimiento_params
      params.require(:lugar_nacimiento).permit(:nombre_departamento, :nombre_municipio, :nombre_centro_poblado, :nombre)
    end
end
