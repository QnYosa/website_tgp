class UsersController < ApplicationController 
    def index 
    end 

    def show
        @user = User.all 
        @gossip = Gossip.all
    end 

    def new 
        @user = User.new
    end 

    def create 
       @user = User.new(email:params[:email], password:params[:password], city: City.first)
       if @user.save
        redirect_to root_path

       else 
        puts "="*90
           @user.errors.full_messages
        puts "="*90
       end

    end 

    def edit 
    end 

    def update 
    end 
end 