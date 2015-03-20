class Dog < ActiveRecord::Base
  
  attr_accessible :name, :breed, :age, :gender, :colour, :description, :serial_num, :owner_id, :temperament_id
  
end