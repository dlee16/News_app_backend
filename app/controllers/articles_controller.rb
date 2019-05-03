class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    render json: @articles
  end

  def find_articles
    article_codes_url = RestClient.get('https://newsapi.org/v2/top-headlines?' + 'country=us&' + 'apiKey=97a71b6649dd4f3b8c614dadacd3f50d')
   
    # article_codes_url = RestClient.get('localhost:3000/articles')
    article_codes = article_codes_url.body
    article_codes_obj = JSON.parse(article_codes)
    article_codes_obj["articles"].each do |article| 
      news = Article.create do |key|
          key.title= article["title"]
          key.author= article["author"]
          key.source = article["url"]
          key.description = article["content"]
          key.image = article["urlToImage"]
          key.published_date = article["published_at"]
          key.category = article["description"]
      end 
    end 
    render json: Article.all
  end 

  def show
  
      @article = Article.find(params[:id])
      render json: @article
  end


  def update
      @article = Article.find(params[:id])
       render json: @article
  end


  private

  def user_params
      params.require(:article).permit(:title, :description, :author, :published_date, :source, :likes, :category, :image)
  end

end
