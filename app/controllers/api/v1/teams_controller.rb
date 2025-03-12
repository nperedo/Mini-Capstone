class Api::V1::TeamsController < ApplicationController
  before_action :authorize_request 
  def index
    teams = Team.all 
    render json: teams
  end 

  def create
    team = Team.create(
      name: params[:name],
      user_id: params[:user_id]
    )
    render json: team
  end

  def show
    team = Team.find(params[:id])
    render json: team
  end
end
