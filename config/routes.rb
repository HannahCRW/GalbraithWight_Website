Rails.application.routes.draw do

  get 'about/overview'

  get 'static/serviceset'

  get 'static/events'

  get 'about/history'

  get 'about/vision'

  get 'about/team'

  get 'ma/services'

  get 'ma/cs'

  get 'imr/services'

  get 'imr/cs'

  get 'ble/services'

  get 'ble/cs'

  get 'static/contact'

  get 'static/sitemap'

  get '/auth/:provider/callback', to: 'sessions#create'

resources :users

  devise_for :users, skip: :sessions
  root 'home#index'
  as :user do
    get 'sign-in' => 'devise/sessions#new', :as => :new_user_session
    post 'sign-in' => 'devise/sessions#create', :as => :user_session
    delete 'sign-out' => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  get 'news/index'
    resources :articles do
      resources :comments
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
end
