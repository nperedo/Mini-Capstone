class Api::V1::TeamsController < ApplicationController
  before_action :authorize_request 
  def index
    teams = Team.all 
    render json: teams
  end 

  def create
    team = Team.create(
      name: params[:name],
      rank: params[:rank],
      user_id: params[:user_id]
    )
    render json: team
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

