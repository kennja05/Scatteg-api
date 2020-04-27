class ListsController < ApplicationController

    def index
        lists = List.all 
        render json: lists
    end 

    def show
        list = List.find(params['id'])
        render json: list, include: :categories, except: [:created_at, :updated_at]
    end 

    def randomList
        list = List.all.sample
        render json: list, except: [:created_at, :updated_at], include: :categories
    end
end
