class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :article_id, :user_comment
  belongs_to :article
  belongs_to :user
end
