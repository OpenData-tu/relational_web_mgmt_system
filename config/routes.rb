Rails.application.routes.draw do
  resources :measurements
  resources :sensor_stations
  resources :sensors
  resources :data_sources
  resources :unit_categories
  resources :units
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'data_sources#index'

  get 'unit_categories/:id/getMainUnit', to: 'unit_categories#get_main_unit', :as => :main_unit, :via => :get
  get 'unit_categories/:id/units', to: 'unit_categories#get_units', :as => :all_units, :via => :get

  get 'data_sources/:id/measurements', to: 'data_sources#get_measurements', :as => :all_measurements, :via => :get
  get 'data_sources/:id/getValidationSchema', to: 'data_sources#json_schema', :as => :validation_schema, :via => :get
  get 'measurements/:id/data_sources', to: 'measurements#get_data_sources', :as => :all_data_sources, :via => :get
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
end
