class MunicipiosController < ApplicationController
 
  before_action :set_municipio, only: [:show, :edit, :update, :destroy]

  def index
      @municipios = Municipio.search(params[:search], params[:page])
  end

  def show
  end

  def new
        @municipio = Municipio.new
  end

  def edit
  end

  def create
       @municipio = Municipio.new(municipio_params)
       render action: :new unless @municipio.save
  end

  def update
        render action: :edit unless @municipio.update_attributes(municipio_params)
  end

  def destroy
       @municipio.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_municipio
       @municipio = Municipio.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def municipio_params
        params.require(:municipio).permit(:nombre)
  end

end