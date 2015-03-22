class OwnersController < ApplicationController
  
  # There is no delete command for the owner, because owners cannot be deleted.
  
  # This goes to the home page, for the serial_num.
  # This is for form_for if I decide to use it.
  def home
  end
  
  
  # Updates an edited form.
  def update
    
    # redirects to the dog profile page.
  end
  
  
  def create
    @owner = Owner.new
  end
  
  # Saves brand new data into the table.
  def save
    new_owner = Owner.create(params[:owner])
    redirect_to controller: "owners", action: "home"
    # Redirects to the dog profile page.
  end
  
  
  # Returns data from the table for a particular record.
  def find
    @owner = Owner.find(params[:id])
  end
  
  
  # Returns all records in the table.
  def show_all
    @owners = Owner.all
  end
  
end
