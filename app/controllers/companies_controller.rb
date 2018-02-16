class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:notice] = "The Company has been saved!"
      redirect_to companies_path
    else
      render :new
    end
  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      flash[:notice] = "Your client has been updated!"
      redirect_to company_path
    else
      render :edit
    end
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to companies_path
  end


  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :company_goals, :personal_dev_goals, :future_work_opportunities)
  end
end
