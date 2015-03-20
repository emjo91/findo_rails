class CreateTableForOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string   :first_name
      t.string   :last_name
      t.integer  :phone_num
      t.string   :email
      t.string   :address
      t.string   :state
      t.string   :city
      t.integer  :zip
    end
  end
end
