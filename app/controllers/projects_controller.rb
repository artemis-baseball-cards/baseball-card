class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @employees = Employee.all
  end

  def new
    @project = Project.new
    @employees = Employee.all
    @critical_thinking_employees = Employee.critical_thinking
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Your Project has been saved!"
      redirect_to projects_path
    else
      render :new
    end
  end

  def edit
    @employees = Employee.all
    @project = Project.find(params[:id])
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
    params.require(:project).permit(:title, :start_date, :end_date, :project_type, :role, :key_skill, :objective, :goals, :employee_ids => [])
  end
end
