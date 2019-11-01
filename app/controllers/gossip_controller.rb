class GossipController < ApplicationController

    def index 
        @gossip = Gossip.all
        @user = User.all
    end 

    def show 
    end 

    def new 
    end 

    def create 
        @gossip = Gossip.new(title:params["gossip_title"], content:params["gossip_content"], user_id: 31)
        
        if @gossip.save 
            puts "C'est vrai"

            redirect_to gossip_index_path
        else
                render new_gossip_path
                
        end
    end 

    def edit 
        @gossip = Gossip.find(params[:id])
    end 

    def update 
            @gossip =Gossip.find(params[:id])
            if @gossip.update(title: params[:gossip_title], content: params[:gossip_content])
              redirect_to @gossip
            else
              render :edit
            end
    end 

#    protected
#    def params_gossip
#        params.require(:gossip).permit(:title, :content)
#    end

end 