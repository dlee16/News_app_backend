class ArticlesController < ApplicationController

  def index
    @articles = Article.order('id DESC')
    render json: @articles
  end

  def find_articles
    article_codes_url = RestClient.get('https://newsapi.org/v2/top-headlines?' + 'country=us&' + AUTH_DETAILS['api_key'])
   
    article_codes = article_codes_url.body
    article_codes_obj = JSON.parse(article_codes)
    article_codes_obj["articles"].each do |article|
      if article['title'].exclude?("%")
        news = Article.find_or_create_by(:title => article["title"]) do |key|
          key.author= article["author"]
          key.url = article["url"]
          key.description = article["description"]
          key.image = article["urlToImage"]
          key.published_date = article["publishedAt"]
          key.source = article["source"]["name"]
          key.likes = 0
          key.comments= []
        end 
      end 
    end 
    render json: Article.order('id DESC')
  end

  def show
  
      @article = Article.find(params[:id])
      render json: @article
  end


  def update
      @article = Article.find(params[:id])
      @article.update(article_params)
       render json: @article
  end


  private

  def article_params
      params.require(:article).permit(:likes, :comments)
  end

end
