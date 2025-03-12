class Api::V1::PlayersController < ApplicationController
  before_action :authorize_request 
  def index
    players = Player.all 
    render json: players
  end 

  def create
    player = Player.create(
      name: params[:name],
      team_id: params[:team_id]
    )
    render json: player
  end

  def show
    player = Player.find(params[:id])
    render json: player
  end

  def destroy
    player = Player.find(params[:id])
    player.destroy
    render :no_content
  end
end
