class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(employee_params)
    if @team.save
      flash[:notice] = "Your Team has been saved!"
      redirect_to teams_path
    else
      render :new
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.employees.update(params[:employee])
    if @team.update(team_params)
      flash[:notice] = "Your team has been updated!"
      redirect_to teams_path
    else
      render :edit
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end

private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:objective, :start_date, :goals)
  end
end
