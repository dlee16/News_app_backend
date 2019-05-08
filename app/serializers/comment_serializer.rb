class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :article_id, :user_comment, :user_name
  belongs_to :article
  belongs_to :user
end 

  def user_name
    self.user.username
  end 

