class MembersController < ApplicationController
    
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
        
    end
    
    def update
        if @member.update(member_params)
            redirect_to @member
        else
            render 'edit'
        end
    end
    
    private
        
        def member_params
            params.require(:member).permit(:username, :email, :password)
        end
        
    
end
