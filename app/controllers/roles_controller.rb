class RolesController < ApplicationController
 
  before_action :set_role, only: [:show, :edit, :update, :destroy]


  def index
     @roles = Role.all
  end

  def show
  end

  def new
     @role = Role.new
  end

  def edit
  end

  def create
       @role = Role.new(role_params)
       render action: :new unless @role.save
  end

  def update
        render action: :edit unless @role.update_attributes(role_params)
  end

  def destroy
       @role.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_role
       @role = Role.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def role_params
        params.require(:role).permit(:name)
  end

end
