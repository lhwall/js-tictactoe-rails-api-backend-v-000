class GamesController < ApplicationController
  # Add your GamesController code here

  def create
byebug
      @game = Game.create(params)
      render json: @game.to_json
  end

  def show
    @game = Game.find(params[:id])
    render json: @game.to_json
  end

  def update
    @game = Game.find(params[:id])
    render json: @game.to_json
  end

  def index
  end

end

private
