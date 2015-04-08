class EstadoCivilsController < ApplicationController
 
  before_action :set_estado_civil, only: [:show, :edit, :update, :destroy]

  def index
      @estado_civils = EstadoCivil.search(params[:search], params[:page])
  end

  def show
  end

  def new
        @estado_civil = EstadoCivil.new
  end

  def edit
  end

  def create
       @estado_civil = EstadoCivil.new(municipio_params)
       render action: :new unless @estado_civil.save
  end

  def update
        render action: :edit unless @estado_civil.update_attributes(estado_civil_params)
  end

  def destroy
       @estado_civil.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_estado_civil
       @estado_civil = EstadoCivil.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def estado_civil_params
        params.require(:estado_civil).permit(:nombre)
  end

end
