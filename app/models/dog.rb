class Dog < ActiveRecord::Base
  
  belongs_to :temperament
  belongs_to :owner
  
  validates_presence_of :name, :breed, :age, :gender, :colour, :description, :serial_num
    
  attr_accessible :name, :breed, :age, :gender, :colour, :description, :serial_num, :owner_id, :temperament_id
  
end