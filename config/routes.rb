CroquetClub::Application.routes.draw do
  resources :bookings

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => 'croquet#Home'
  match '/aboutTheClub' => 'croquet#AboutTheClub', via: :get
  match '/howToJoin' => 'croquet#HowToJoin', via: :get
  match '/whatYouNeed' => 'croquet#WhatYouNeed', via: :get
  match '/programme' => 'croquet#Programme', via: :get
  match '/newsLetters' => 'croquet#NewsLetters', via: :get
  match '/clubMatters' => 'croquet#ClubMatters', via: :get
  match '/howToGetThere' => 'croquet#HowToGetThere', via: :get 
  match '/bookALawn' => 'croquet#BookALawn', via: :get
  match '/links' => 'croquet#LinksToCroquetSites', via: :get
  match '/admin' => 'croquet#AdminLogin', via: :get
  match '/signUp' => 'croquet#SignUp', via: :get
   match '/signIn' => 'croquet#SignIn', via: :get
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
