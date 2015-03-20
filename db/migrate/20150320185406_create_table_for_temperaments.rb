class CreateTableForTemperaments < ActiveRecord::Migration
  def change
    create_table :temperaments do |t|
      t.string   :temperament
    end
  end
end
