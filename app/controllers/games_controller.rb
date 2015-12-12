require 'scripts/sequence'
class GamesController  < ApplicationController
  def show
    @sequence = make_seq(1, 16)
    @game = current_user.games.create(difficulty: 0)
  end

  def index
    @games = current_user.games.where('score > 0')
  end

  def update

    @game = Game.find(params[:id])
    score = params[:game][:score].to_i
    chrono = "00:"+params[:game][:chrono]
    @game.update(score: score, chrono: chrono)
    redirect_to games_path
  end
end
