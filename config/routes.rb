Rails.application.routes.draw do
  devise_for :users
  resources :books
  root 'books#index'
  post '/books/find' => 'books#find'
  post '/books/books/find' => 'books#find'

end
