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
        listArray = []
        i = 0
        while i < 3 do
            list = List.all.sample
            if !listArray.include?(list)
                listArray.push(list)
                i+=1
            end
        end
        render json: listArray, except: [:created_at, :updated_at], include: :categories
    end
end
