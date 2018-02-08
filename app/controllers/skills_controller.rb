class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :destroy]

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      flash[:notice] = "The Skill has been saved!"
      redirect_to skills_path
    else
      render :new
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to skills_path
  end
end

private

def set_skill
  @skill = Skill.find(params[:id])
end

def skill_params
  params.require(:skill).permit(:description)
end
