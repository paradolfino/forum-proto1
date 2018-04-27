class ApplicationController < ActionController::Base
    helper_method :current_user 

    def current_user 
        @current_user ||= User.find(session[:user_id]) if session[:user_id] 
    end
  
    def require_user 
  	   redirect_to '/login' unless current_user 
    end
	
    def require_same_user(user)
	    if current_user != user
    	   flash[:notice] = "You don't have the right to view this!"
    	   redirect_to '/'
	    end
    end
end
