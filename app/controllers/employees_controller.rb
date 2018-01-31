class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
    @projects = Project.all
  end

  def flip
    @employee = Employee.find(params[:id])
    @projects = Project.all
    render :flip
  end

  def new
    @projects = Project.all
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.user_id = current_user.id
    if @employee.save
      flash[:notice] = "Your Employee has been saved!"
      redirect_to employees_path
    else
      render :new
    end
  end

  def edit
    @projects = Project.all
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      flash[:notice] = "Your Employee has been updated!"
      redirect_to employees_path
    else
      render :edit
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
    @employee.user_id = current_user
  end

  def employee_params
    params.require(:employee).permit(:name, :position, :start_date, :life_quote, :quote, :motto, :strength, :myers_briggs, :birkman, :vision, :short_term_goal, :long_term_goal, :objective_setting, :personal_goal, :mission, :expectation, :awesome, :need, :receive_feedback, :development, :personal_goal_two, :personal_goal_three, :personal_goal_four, :home_geography, :industry_experience, :willing_to_travel, :project_ids => [], :areas_to_develop => [], :skills => [] )
  end
end
