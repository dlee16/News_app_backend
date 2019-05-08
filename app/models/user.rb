class User < ApplicationRecord
    has_many :favorites
    has_many :articles, through: :favorites
    has_many :comments
    has_many :articles, through: :comments
    has_secure_password 

    validates :username, uniqueness: true
end
