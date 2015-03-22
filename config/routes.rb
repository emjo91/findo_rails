FindoRails::Application.routes.draw do
  
  
  # RESTFUL ROUTES
  
  # SHOW ALL
  # This shows all the profiles for the dogs and owners.
  get "/dogs" => 'dogs#show_all', as: "dog"
  
  get "/owners" => 'owners#show_all', as: "owner"
  
  
  # CREATE
  # This shows the form for creating a new dog and owner.
  get "/dogs/new" => 'dogs#create', as: "new_dog"
  
  get "/owners/new" => 'owners#create', as: "new_owner"
  
  
  # SAVE
  # This saves the form data from create, no route name.
  # No ERB for this.
  post "/dogs" => 'dogs#save'
  
  post "/owners" => 'owners#save'
  
  
  # EDIT
  # This shows the edit form for dogs and owners.
  get "/dogs/:id/edit" => 'dogs#edit', as: "edit_dog_id"
  
  get "/owners/:id/edit" => 'owners#edit', as: "edit_owner_id"
  
  
  # UPDATE
  # This updates the record and saves the edit form data, not sure if I can have videogame as title. 
  # No ERB for this.
  put "/dogs/:id" => 'dogs#update'
  
  put "/owners/:id" => 'owners#update'
  
  
  # FIND
  # This shows the data for a given record.
  # PROFILE LINK
  get "/dogs/:id" => 'dogs#find'
  
  get "/owners/:id" => 'owners#find'
  
  
  # DELETE
  # This deletes the dogs and owners.
  # No ERB for this. 
  delete "/dogs/:id" => 'dogs#delete'
  
  # Owners cannot be deleted.
  # delete "/owners/:id" => 'owners#delete'
  
  
  # HOMEPAGE
  get "/findo" => 'owners#home'
  
  
  
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
