class PiratesController < ApplicationController

    def index #GET /pirates
        @pirates = Pirate.all 
        render json: @pirates
    end

    def show # GET /pirates/:id
        @pirate = Pirate.find(params[:id])
        render json: @pirate
    end 

    def create #POST /pirates
        @pirate = Pirate.create(name: params[:name], age: params[:age])
        render json: @pirate
    end

    def update 
        @pirate = Pirate.find(params[:id])
        @pirate.update(name: params[:name])

        render json: @pirate
    end

    def destroy 
        @pirate = Pirate.find(params[:id])

        render json: {message: "Pirate #{@pirate.id} has been deleted!"}
    end
   
end
