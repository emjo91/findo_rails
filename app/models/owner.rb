class Owner < ActiveRecord::Base
  
  has_many :dogs
  
  attr_accessible :first_name, :last_name, :phone_num, :email, :address, :state, :city, :zip
  # Need to add username and password
  
end