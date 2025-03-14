class Api::V1::TeamsController < ApplicationController
  before_action :authorize_request 
  def index
    teams = Team.all 
    render json: teams
  end 

  def create
    team = Team.new(team_params) # Use strong parameters
    if team.save
      render json: team, status: :created # 201 for success
    else
      render json: { errors: team.errors.full_messages }, status: :unprocessable_entity # 422 for failure
    end
  end

  def update
    team = Team.find(params[:id])
    team.update(team_params)
    render json: team
  end 


  def show
    team = Team.find(params[:id])
    render json: team
  end

  def destroy
    team = Team.find(params[:id])
    team.destroy
    render :no_content
  end

  private
  def team_params
    params.permit(:name, :rank, :user_id)
  end
  
end