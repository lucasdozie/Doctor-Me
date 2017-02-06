Rails.application.routes.draw do

  get 'home/' => 'pages#home'
  get 'contact/' => 'pages#contact'


  devise_for :users
  #get 'posts/index'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root to: "admin/dashboards#index"
  root to: "pages#home"
  namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
      get '' => 'dashboards#index'
      get 'posts/' => 'posts#index'
      get 'posts/show'
      resources :products
      resources :pages

    get 'users' => 'users#list'
    get 'users/list'
    get 'users/edit'
    put 'users/update'
    patch 'users/update'
    get 'users/show'
    post 'users/create'
    get 'users/delete'
  end
end
