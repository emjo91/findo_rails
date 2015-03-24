class AddUserNamePasswordToOwners < ActiveRecord::Migration
  def change
    add_column :owners, :username, :text, :unique => true
    add_column :owners, :password, :text
  end
end
