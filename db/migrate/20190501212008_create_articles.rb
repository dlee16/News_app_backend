class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.string :author
      t.string :published_date
      t.string :source
      t.integer :likes
      t.string :category
      t.string :image

      t.timestamps
    end
  end
end
