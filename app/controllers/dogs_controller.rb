class DogsController < ApplicationController
  
  # deletes the dog record in a table.
  def delete
    
    # Redirects to the owner's profile page.
  end
  
  # Updates an edited form.
  def update
    
    # redirects to the dog profile page.
  end
  
  
  # Saves brand new data into the table.
  def save
    
    # Redirects to the dog profile page.
  end
  
  
  # Returns data from the table for a particular record.
  def find
    @dog = Dog.find(params[:id])
  end
  
  
  # Returns all records in the table.
  def show_all
    @dogs = Dog.all
  end
  
end
