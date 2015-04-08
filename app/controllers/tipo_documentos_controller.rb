class TipoDocumentosController < ApplicationController
 
  before_action :set_tipo_documento, only: [:show, :edit, :update, :destroy]

  def index
      @tipo_documentos = TipoDocumento.search(params[:search], params[:page])
  end

  def show
  end

  def new
        @tipo_documento = TipoDocumento.new
  end

  def edit
  end

  def create
       @tipo_documento = TipoDocumento.new(tipo_documento_params)
       render action: :new unless @tipo_documento.save
  end

  def update
        render action: :edit unless @tipo_documento.update_attributes(tipo_documento_params)
  end

  def destroy
       @tipo_documento.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_tipo_documento
       @tipo_documento = TipoDocumento.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def tipo_documento_params
        params.require(:tipo_documento).permit(:nombre, :sigla)
  end

end
