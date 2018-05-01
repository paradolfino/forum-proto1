class PostsController < ApplicationController
    
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    #before_action :require_member, only: [:new, :edit, :destroy]
    
    def show
        @comments = @post.comments
    end
    
    def new
       @post = Post.new 
    end
    
    def create
       @post = Post.new(post_params) 
       if @post.save
          redirect_to @post 
       else
           redirect_to 'new'
       end
    end
    
    def edit
        #require_same_poster(@post)
    end
    
    def update
       if @post.update(post_params)
          redirect_to @post 
       else
           render 'edit'
       end
    end
    
    def destroy
       @post.destroy 
    end
    
    private
    
        def post_params
           params.require(:post).permit(:title, :content)
        end
        
        def set_post
            @post = Post.find(params[:id]) 
        end
    
end
