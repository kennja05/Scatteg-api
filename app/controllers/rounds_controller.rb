class RoundsController < ApplicationController

    def index
        rounds = Round.all 
        render json: rounds
    end


    def create
        byebug
    end

    private

    def round_params
        params.require(:round).permit(:game_id, :qOne, :qTwo, :qThree, :qFour, :qFive, :qSix, :qSeven, :qEight, :qNine, :qTen, :qEleven, :qTwelve, :score)
    end

end
