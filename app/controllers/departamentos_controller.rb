class DepartamentosController < ApplicationController
 
  before_action :set_departamento, only: [:show, :edit, :update, :destroy]
  

  def index
       
        @departamentos = Departamento.search(params[:search], params[:page])
  end

  def show
  end

  def new
        @departamento = Departamento.new
  end

  def edit
  end

  def create
       @departamento = Departamento.new(departamento_params)
       render action: :new unless @departamento.save
  end

  def update
        render action: :edit unless @departamento.update_attributes(departamento_params)
  end

  def destroy
       @departamento.destroys
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_departamento
       @departamento = Departamento.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def departamento_params
        params.require(:departamento).permit(:nombre)
  end

end