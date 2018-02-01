class OthersController < ApplicationController
  before_action :set_other, only: [:show, :edit, :update, :destroy]

  def index
    @others = Other.all
  end

  def show
    @other = Other.find(params[:id])
  end

  def new
    @employee = Employee.find(params[:employee_id])
    @other = Other.new
  end

  def create
    @employee = Employee.find(params[:employee_id])
    @other = @employee.others.new(other_params)
    if @other.save
      flash[:notice] = "Your input has been saved!"
      redirect_to employee_path(@employee)
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:employee_id])
    @other = Other.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:employee_id])
    @other = Other.find(params[:id])
    if @other.update(other_params)
      flash[:notice] = "Your input has been updated!"
      redirect_to employee_path(@employee)
    else
      render :edit
    end
  end


  def destroy
    @other = Other.find(params[:id])
    @other.destroy
    redirect_to employees_path
  end

  private
    def set_other
      @other = Other.find(params[:id])
    end

    def other_params
      params.require(:other).permit(:occasion, :end_project, :birthday, :pulse_survey, :employee_id)
    end
end
