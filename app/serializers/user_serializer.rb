class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password
  has_many :favorites
  has_many :articles, through: :favorites
  has_many :comments
  has_many :articles, through: :comments
end
