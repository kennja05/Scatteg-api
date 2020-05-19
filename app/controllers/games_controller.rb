class GamesController < ApplicationController

    def index
        game = Game.all 
        render json: game, include: :rounds
    end 

    def create
        byebug
    end


end
