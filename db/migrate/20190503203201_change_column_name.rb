class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :category, :url
  end
end
