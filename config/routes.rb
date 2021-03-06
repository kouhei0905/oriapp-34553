Rails.application.routes.draw do
  devise_for :users

  root to: "books#index"
  post 'books/rakuten' => 'books#rakuten'

  resources :books do
    resources :comments, only: :create

    collection do
      get 'search'
      get 'rakuten'
    end
  end
end
