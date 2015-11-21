require 'scripts/sequence'
class GamesController  < ApplicationController
  def show
    @sequence = make_seq(1, 25)
    @game = current_user.games.create
  end
end