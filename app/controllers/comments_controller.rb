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
  end
end
