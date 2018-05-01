class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]
  
  
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      
    else
      
    end
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    @comment.destroy
  end
  
  private
  
    def set_comment
      @comment = Comment.find(params[:id])
    end
    
    def comment_params
      params.require(:comment).permit(:content, :post_id, :member_id)
    end
end
