class  DatoEstudiantesController  < ApplicationController
 
  before_action :set_dato_estudiante, only: [:show, :edit, :update, :destroy]
  autocomplete :municipio, :nombre


  def index
      @dato_estudiantes = DatoEstudiante.search(params[:search], params[:page])
  end

  def show
  end

  def new
        @dato_estudiante = DatoEstudiante.new
  end

  def edit
  end

  def create
       @dato_estudiante = DatoEstudiante.new
       @dato_estudiante.municipio_id = params[:id_municipio]
       render action: :new unless @dato_estudiante.save
  end

  def update
        render action: :edit unless @dato_estudiante.update_attributes(dato_estudiante_params)
  end

  def destroy
       @dato_estudiante.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_dato_estudiante
       @dato_estudiante = DatoEstudiante.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def dato_estudiante_params
        params.require(:dato_estudiante).permit(:codigo, :nombre, :apellido, :fch_nacimiento, :mail, :tipo_doc, :doc_identidad, :curso, :grado, :pais_id, :municipio_id, :direccion, :telefono, :celular, :genero, :departamento)
  end

end
