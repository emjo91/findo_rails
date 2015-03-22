class DogsController < ApplicationController
  
  # deletes the dog record in a table.
  # This is working.
  # Should probably add an event listener to this.
  def delete
    @dog = Dog.find(params[:id]).destroy
    redirect_to controller: "owners", action: "home"
    # Needs to redirect to the owner's page.
  end
  
  
  def create
    @dog = Dog.new
  end
  
  
  # Saves brand new data into the table.
  # The redirect isn't working, yet...to direct to the profile page.
  def save
    new_dog = Dog.create(params[:dog])
    redirect_to controller: "dogs", action: "/dogs/#{new_dog.id}"
  end
  
  
  # Returns data from the table for a particular record.
  def find
    @dog = Dog.find(params[:id])
  end
  
  
  # Returns all records in the table.
  def show_all
    @dogs = Dog.all
  end
  
  
  # This is working.
  def edit
    @dog = Dog.find(params[:id])
  end
  
  
  # Working
  # Updates an edited form.
  def update
    @dog = Dog.find(params[:id])
    @dog.update_attributes(params[:dog])
    redirect_to controller: "owners", action: "home"
    # I want this to redirect to the dog's profile
  end
  
end
