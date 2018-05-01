class CommentsController < ApplicationController
  
  
  
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
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
