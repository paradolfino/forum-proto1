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
       if @post.save
           
       else
           
       end
    end
    
    def edit
        
    end
    
    def update
       if @post.update(post_params)
          redirect_to @post 
       else
           render 'edit'
       end
    end
    
end
