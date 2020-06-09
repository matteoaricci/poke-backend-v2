class MoveSetsController < ApplicationController

    def index 
        sets = MoveSet.all 

        render json: sets
    end
end
