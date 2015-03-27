class Owner < ActiveRecord::Base
  
  has_secure_password
  
  has_many :dogs
  
  validates_presence_of :first_name, :last_name, :phone_num, :email, :address, :state, :city, :zip, :username, :password
  
  attr_accessible :first_name, :last_name, :phone_num, :email, :address, :state, :city, :zip, :username, :password
  # Need to add username and password
  
end