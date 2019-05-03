class ArticleSerializer < ActiveModel::Serializer
  attributes :title, :description, :author, :published_date, :source, :likes, :category, :image
  has_many :comments
  
end
