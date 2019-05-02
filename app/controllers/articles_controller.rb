class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    render json: @articles
  end

  def show
      @article = Article.find(params[:id])
      render json: @article
  end

  def create
      @article = Article.create(params[:id])
       render json: @article
  end

  def update
      @article = Article.find(params[:id])
       render json: @article
  end

  def delete
      @article = Article.find(params[:id])
      @article.destroy
  end

  private

  def user_params
      params.require(:article).permit(:title, :description, :author, :published_date, :source, :likes, :category, :image)
  end

end
