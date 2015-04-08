class PaisController < ApplicationController
 
  before_action :set_pai, only: [:show, :edit, :update, :destroy]

  def index
     @pais = Pai.search(params[:search], params[:page])
  end

  def show
  end

  def new
        @pai = Pai.new
  end

  def edit
  end

  def create
       @pai = Pai.new(pai_params)
       render action: :new unless @pai.save
  end

  def update
        render action: :edit unless @pai.update_attributes(pai_params)
  end

  def destroy
       @pai.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pai
       @pai = Pai.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def pai_params
        params.require(:pai).permit(:nombre)
  end

end
