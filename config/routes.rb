Rails.application.routes.draw do
  root to: "pages#home"

  get 'home/' => 'pages#home'
  get 'contact/' => 'pages#contact'


  devise_for :users
  #get 'posts/index'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root to: "admin/dashboards#index"
  namespace :admin do
  # # Directs /admin/products/* to Admin::ProductsController
  # # (app/controllers/admin/products_controller.rb)
    get '' => 'dashboards#index'
    get 'posts/' => 'posts#index'
    get 'posts/show'
    resources :products
    get 'pages' => 'pages#list'
    get 'pages/delete'
    resources :pages
    resources :blogs

    get 'users' => 'users#list'
    get 'users/list'
    get 'users/new'
    get 'users/edit'
    put 'users/update'
    patch 'users/update'
    get 'users/show'
    post 'users/create'
    get 'users/delete'
  end
end
