class CreateTableForDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string   :name
      t.string   :breed
      t.integer  :age
      t.string   :gender
      t.string   :colour
      t.string   :description
      t.integer  :serial_num
      t.integer  :owner_id
      t.integer  :temperament_id
    end
  end
end
