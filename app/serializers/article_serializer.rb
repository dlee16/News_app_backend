class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author, :published_date, :source, :likes, :url, :image
  has_many :comments
  
end
