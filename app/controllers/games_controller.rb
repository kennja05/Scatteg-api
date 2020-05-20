class GamesController < ApplicationController

    def index
        game = Game.all 
        render json: game, include: :rounds
    end 

    def create
        newGame = Game.new(game_params)
        if newGame.save
            render json: newGame
        else
            render json: {errors => newGame.errors.full_messages}
        end

    end

    private
    
    def game_params
        params.require(:game).permit(:username)
    end


end
