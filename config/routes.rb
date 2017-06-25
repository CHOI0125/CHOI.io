Rails.application.routes.draw do
  root 'home#index'
  get 'home/index' => 'home#index'
  get '/home/new' => 'home#new' #create에 해당
  post '/home/create' => 'home#create' #create에 해당
  # root 'posts#index'
  get'/home/list' => 'home#list' #read에 해당
  get '/home/show/:home_id' => 'home#show' #read에 해당
  post '/home/destroy/:home_id' => 'home#destroy' #d에 해당
  post '/home/edit/:home_id' => 'home#edit' #u 에 해당
  get '/home/update/:home_id' => 'home#update' #u에 해당 
  ## comments
  post '/home/show/:home_id/comments/create' => 'comments#create'
  post '/home/show/:home_id/comments/destroy/:comment_id' => 'comments#destroy'

  devise_for :users
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
end
