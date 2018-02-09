class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  def index
    @roles = Role.all
  end

  def show
    @role = Role.find(params[:id])
  end

  def new
    @role = Skill.new
  end

  def create
    @role = Role.new(skill_params)
    if @role.save
      flash[:notice] = "The Role has been saved!"
      redirect_to roles_path
    else
      render :new
    end
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy
    redirect_to roles_path
  end
end

def set_role
  @role = Role.find(params[:id])
end

def role_params
  params.require(:role).permit(:name)
end
