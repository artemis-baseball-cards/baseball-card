class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @employees = Employee.all
    @skills = Skill.all
    @roles = Role.all
    @industries = Industry.all

  end

  def new
    @project = Project.new
    @employees = Employee.all
    @skills = Skill.all
    @roles = Role.all
    @industries = Industry.all
    @interns = Employee.intern
    @analysts = Employee.analyst
    @associates = Employee.associate
    @engagement_managers = Employee.engagement_manager
    @partners = Employee.partner
    @principals = Employee.principal
  end

  def create
    @project = Project.new(project_params)
    @employees = Employee.all
    @skills = Skill.all
    @roles = Role.all
    @industries = Industry.all
    @interns = Employee.intern
    @analysts = Employee.analyst
    @associates = Employee.associate
    @engagement_managers = Employee.engagement_manager
    @partners = Employee.partner
    @principals = Employee.principal
    if @project.save
      flash[:notice] = "Your Project has been saved!"
      redirect_to projects_path
    else
      render :new
    end
  end

  def edit
    @employees = Employee.all
    @skills = Skill.all
    @roles = Role.all
    @industries = Industry.all
    @project = Project.find(params[:id])
    @interns = Employee.intern
    @analysts = Employee.analyst
    @associates = Employee.associate
    @engagement_managers = Employee.engagement_manager
    @partners = Employee.partner
    @principals = Employee.principal

  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      flash[:notice] = "Your project has been updated!"
      redirect_to projects_path
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :start_date, :end_date, :project_type, :objective, :goals, :employee_ids => [], :skill_ids => [], :role_ids => [], :industry_ids => [])
  end
end
