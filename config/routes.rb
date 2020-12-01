Rails.application.routes.draw do
  get 'users/show'
  root to: 'static_pages#home'
  #get 'static_pages/home'
  devise_for :users
  resources :books
  resources :book_reviews
  resources :stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/name_search', to: 'search#name_search'
  get '/rank', to: 'search#rank'
end