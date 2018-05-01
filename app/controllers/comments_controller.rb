class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]
  #before_action :require_member
  
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to scene_posts_path
    else
      render 'new'
    end
  end

  def edit
    
  end

  def update
    if @comment.update(comment_params)
      redirect_to scene_posts_path
    else
      render 'new'
    end
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
