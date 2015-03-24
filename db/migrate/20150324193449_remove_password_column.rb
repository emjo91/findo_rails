class RemovePasswordColumn < ActiveRecord::Migration
  def change
    remove_column "owners", "password"
  end
end
