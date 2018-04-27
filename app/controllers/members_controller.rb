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
        
    
end
