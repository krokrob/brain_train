require 'scripts/sequence'
class GamesController  < ApplicationController
  def show
    @sequence = make_seq(1, 25)
    @game = current_user.games.create
  end

  def index
    @games = current_user.games
  end

  def update
    @game = Game.find(params[:id])
    score = params[:game][:score].to_i
    @game.update(score: score)
    redirect_to games_path
  end
end
