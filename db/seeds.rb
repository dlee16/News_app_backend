# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "faizan", username: "faizan", password: "faizan")
u2 = User.create(name: "diana", username: "diana", password: "diana")
u3 = User.create(name: "victoria", username: "victoria", password: "victoria")

a1 = Article.create(title: "space", description: "describe", author: "author", published_date: "published_date", source: "source", likes: 90, category: "space", image: "none")
a2 = Article.create(title: "cars", description: "describe", author: "author", published_date: "published_date", source: "source", likes: 30, category: "automotive", image: "none")
a3 = Article.create(title: "world", description: "describe", author: "author", published_date: "published_date", source: "source", likes: 43, category: "world", image: "none")

f1 = Favorite.create(user_id: u1.id, article_id: a1.id)
f2 = Favorite.create(user_id: u2.id, article_id: a2.id)
f3 = Favorite.create(user_id: u3.id, article_id: a3.id)

c1 = Comment.create(user_id: u1.id, article_id: a1.id, user_comment: "this article sucks")
c2 = Comment.create(user_id: u2.id, article_id: a2.id, user_comment: "this article is great")
c3 = Comment.create(user_id: u3.id, article_id: a3.id, user_comment: "this article is boring")
