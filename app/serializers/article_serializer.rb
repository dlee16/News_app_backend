class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author, :published_date, :source, :likes, :category, :image
  has_many :favorites
  has_many :users, through: :favorites
  has_many :comments
  has_many :users, through: :comments
end
