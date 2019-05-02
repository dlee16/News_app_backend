class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
      @comment = Comment.find(params[:id])
      render json: @comment
  end

  def create
      @comment = Comment.create(params[:id])
       render json: @comment
  end

  def update
      @comment = Comment.find(params[:id])
       render json: @comment
  end

  def delete
      @comment = Comment.find(params[:id])
      @comment.destroy
  end

  private

  def user_params
      params.require(:comment).permit(:user_id, :article_id, :user_comment)
  end

end
