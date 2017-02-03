Rails.application.routes.draw do
  #get 'posts/index'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
      get '' => 'dashboards#index'
      get 'posts/' => 'posts#index'
      get 'posts/show'
      resources :products
      resources :pages
  end
end
