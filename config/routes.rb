Rails.application.routes.draw do
  
  resources :products
  root 'posts#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'posts/show_post'

  devise_for :users
  get 'pages/search'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
