class MembersController < ApplicationController
    
    before_action :set_member, only: [:show, :edit, :update, :destroy]
    before_action :require_member, only: [:edit]
    
    def index
       @members = Member.all 
    end
    
    def show
        
    end
    
    def new
       @member = Member.new 
    end
    
    def create
       @member = Member.new(member_params)
       if @member.save
          redirect_to '/' 
       else
           render 'new'
       end
    end
    
    def edit
        require_same_member(@member)
    end
    
    def update
        if @member.update(member_params)
            redirect_to @member
        else
            render 'edit'
        end
    end
    
    def destroy
       @member.destroy 
    end
    
    private
        
        def member_params
            params.require(:member).permit(:username, :email, :password_digest)
        end
        
        def set_member
           @member = Member.find(params[:id]) 
        end
        
    
end
