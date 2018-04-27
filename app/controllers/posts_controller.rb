class PostsController < ApplicationController
    
    def index
       @posts = Post.all 
    end
    
    def show
        
    end
    
    def new
       @post = Post.new 
    end
    
    def create
       @post = Post.new(post_params) 
    end
    
end
