class Owner < ActiveRecord::Base
  
  attr_accessible :first_name, :last_name, :phone_num, :email, :address, :state, :city, :zip
  
end