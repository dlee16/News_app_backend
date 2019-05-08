class ChangeColumnForUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column(:users, :password, :password_digest)
  end
end
