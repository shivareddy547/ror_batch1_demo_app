Rails.application.routes.draw do
  devise_for :users
  # get 'books/index'
  # get 'books/new'
  # get 'books/edit'
  # get 'books/delete'
  # get 'books/update'
  # get 'book/index'
  # get 'book/new'
  # get 'book/edit'
  # get 'book/show'
  # delete 'book/delete'
  # post 'book/create'
  # put 'book/update'

  match '/book/list', to: 'book#index', via: [:get]
  match '/book/book_list', to: 'book#book_list', via: [:post,:get]
  resources :students
  resources :books
  root to: "books#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
