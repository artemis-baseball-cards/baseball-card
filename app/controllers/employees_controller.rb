class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
    @id = @employee.id
    @projects = Project.all
    @skills = Skill.all
    @roles = Role.all
    @industries = Industry.all
  end

  def flip
    @employee = Employee.find(params[:id])
    @others = Other.all
    @projects = Project.all
    @data = Employee.get_data
    @critical_thinking = Employee.find_score("Critical Thinker", @data, @employee)
    @strong_communicator = Employee.find_score("Strong Communicator", @data, @employee)
    @proactive = Employee.find_score("Proactive", @data, @employee)
    @flexible = Employee.find_score("Flexible", @data, @employee)
    @positive_thinker = Employee.find_score("Positive Thinker", @data, @employee)
    @emot_intelligence = Employee.find_score("High Emotional Intelligence", @data, @employee)
    @above_beyond = Employee.find_score("Goes above and beyond", @data, @employee)
    @prepared = Employee.find_score("Prepared", @data, @employee)
    @little_direction = Employee.find_score("Needs little direction", @data, @employee)
    @ownership = Employee.find_score("Takes owernship", @data, @employee)
    @survey_designer = Employee.find_score("Survey designer", @data, @employee)
    @leader = Employee.find_score("Leader", @data, @employee)
    @coach = Employee.find_score("Coach", @data, @employee)
    @organized = Employee.find_score("Organized", @data, @employee)
    @presenter = Employee.find_score("Strong Presenter", @data, @employee)
    @quality_deliverables = Employee.find_score("High quality deliverables", @data, @employee)
    @client_facing = Employee.find_score("Client-facing", @data, @employee)
    @detail_oriented = Employee.find_score("Detail oriented", @data, @employee)
    @big_picture = Employee.find_score("Sees the big picture", @data, @employee)
    @process_oriented = Employee.find_score("Process oriented", @data, @employee)
    @receptive_feedback = Employee.find_score("Receptive to feedback", @data, @employee)
    @thoughtful_feedback = Employee.find_score("Thoughtful feedback delivery", @data, @employee)
    render :flip
  end

  def new
    @projects = Project.all
    @skills = Skill.all
    @roles = Role.all
    @industries = Industry.all
    @employee = Employee.new
    @atd_data = Employee.get_atd
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.user_id = current_user.id
    @atd_data = Employee.get_atd
    if @employee.save
      flash[:notice] = "Your Employee has been saved!"
      redirect_to employees_path
    else
      render :new
    end
  end

  def edit
    @projects = Project.all
    @skills = Skill.all
    @role = Role.all
    @industry = Industry.all
    @employee = Employee.find(params[:id])
  end

  def show_list
    respond_to do |format|
      format.js
    end
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
    params.require(:employee).permit(:name, :position, :start_date, :life_quote, :quote, :motto, :strength, :myers_briggs, :birkman, :vision, :short_term_goal, :long_term_goal,  :objective_setting, :personal_goal, :mission, :expectation, :awesome, :need, :receive_feedback, :development, :personal_goal, :personal_goal_two, :personal_goal_three, :country, :state, :city, :willing_to_travel, :areas_to_develop, :remote, :project_ids => [], :skill_ids => [], :role_ids => [], :industry_ids => [])
  end

end
