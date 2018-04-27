class ApplicationController < ActionController::Base
    helper_method :current_member 

    def current_member 
        @current_member ||= User.find(session[:member_id]) if session[:member_id] 
    end
  
    def require_member 
  	   redirect_to '/login' unless current_member 
    end
	
    def require_same_member(member)
	    if current_member != member
    	   flash[:notice] = "You don't have the right to view this!"
    	   redirect_to '/'
	    end
    end
    
    def require_same_poster(poster)
        if current_member.id != poster.id
        end
    end
end
