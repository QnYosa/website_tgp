class CityController < ApplicationController
    def index
        @city = City.all
        @gossip = Gossip.all
    end 

    def show 
        @city = City.find(params[:id])
        @user = User.where(city_id: @city)
    end 

    def create 
    end 

    def update
    end 

    def new 
    end 
end 