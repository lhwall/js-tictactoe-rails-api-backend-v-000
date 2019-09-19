class GamesController < ApplicationController
  # Add your GamesController code here

  def create
      @game = Game.create(strong_params)
      byebug
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



private

def strong_params
  params.permit(:state)
end

end
