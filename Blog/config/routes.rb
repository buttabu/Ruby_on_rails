Rails.application.routes.draw do
  resources :post_comments
  get 'pages/about'

  get 'pages/contact'

  get 'pages/resources'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories
  get 'categories/index'

  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

  get root :to =>'home#index'
  	resources :posts
  	resources :categories
  get '/about', :to => 'pages#about'
  get '/contact', :to => 'pages#contact'
  get '/resources', :to => 'pages#resources'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
