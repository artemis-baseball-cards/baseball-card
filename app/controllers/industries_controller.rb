class IndustriesController < ApplicationController
  before_action :set_industry, only: [:show, :destroy]

  def index
    @industries = Industry.all
  end

  def show
    @industry = Industry.find(params[:id])
  end

  def new
    @industry = Industry.new
  end

  def create
    @industry = Industry.new(industry_params)
    if @industry.save
      flash[:notice] = "The Industry has been saved!"
      redirect_to industries_path
    else
      render :new
    end
  end

  def destroy
    @industry = Industry.find(params[:id])
    @industry.destroy
    redirect_to industries_path
  end
end

private

def set_industry
  @industry = Industry.find(params[:id])
end

def industry_params
  params.require(:industry).permit(:name)
end 
