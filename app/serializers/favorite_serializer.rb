class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :article_id
  belongs_to :article
end
