Rails.application.routes.draw do
  resources :authentications
  resources :histories
  resources :tags
  root 'main#home'
  get 'admin' => 'admin#index'
  get 'index' => 'main#index'
  get 'text' => 'main#dummy'
  get 'edit' => 'main#editor'
  get 'warning' => 'main#warning'
  get 'compare' => 'main#compare'
  get 'mail' => 'authentications#mail'
  get 'auth' => 'authentications#help'
  get 'success' => 'authentications#success'
  get 'fail' => 'authentications#fail'
  get 'verify' => 'authentications#verify'
  get 'compare' => 'main#compare'
  get 'setting' => 'setting#display'
  put 'setting' => 'setting#update'
  get 'resume' => 'resumes#index'
  get 'resume/:id/show' => 'resumes#show', :as => 'show_resume'
  
  resources :resumes
  resources :posts
  devise_for :users, :controllers => {:registrations => "registrations"}
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # Example of regular route:

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):

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
