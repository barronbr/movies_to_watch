Rails.application.routes.draw do

  # Routes for the Actor resource:
  # CREATE
  get '/actors/new',      :controller => 'actors', :action => 'new',    :as => 'new_actor'
  post '/actors',         :controller => 'actors', :action => 'create', :as => 'actors'

  # READ
  get '/actors',          :controller => 'actors', :action => 'index'
  get '/actors/:id',      :controller => 'actors', :action => 'show',   :as => 'actor'

  # UPDATE
  get '/actors/:id/edit', :controller => 'actors', :action => 'edit',   :as => 'edit_actor'
  patch '/actors/:id',    :controller => 'actors', :action => 'update'

  # DELETE
  delete '/actors/:id',   :controller => 'actors', :action => 'destroy'
  #------------------------------

#MOVIES
  #Create movies
  get("/movies/new", { :controller => "movies", :action => "new_form"})
  get("/create_movie", { :controller => "movies", :action => "create_row"})

  #Read movies
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:id", { :controller => "movies", :action => "show" })

  #Destroy movies
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy"})

  #Update movies
  get("/movies/:id/edit",  { :controller => "movies", :action => "edit_form" })
  get("/update_movie/:id", { :controller => "movies", :action => "update_row" })

#DIRECTORS

  resources(:directors)

end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

