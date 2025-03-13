class Api::V1::PlayersController < ApplicationController
  before_action :authorize_request 
  def index
    players = Player.all 
    render json: players
  end 

  def create
    player = Player.new(player_params)
    
    if player.save
      render json: player, status: :created
    else
      render json: { errors: player.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    player = Player.find(params[:id])
    player.update(player_params)
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

  private
  def player_params
    params.permit(:name, :ppg, :rebound, :assist, :team_id)
  end
end
