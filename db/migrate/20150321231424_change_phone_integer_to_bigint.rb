class ChangePhoneIntegerToBigint < ActiveRecord::Migration
  def change
    change_column :owners, :phone_num, :bigint
  end
end
