class Temperament < ActiveRecord::Base
  
  has_many :dogs
  
  attr_accessible :temperament
  
end