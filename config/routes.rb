Rails.application.routes.draw do
  devise_for :users
  get 'tried/index'
  get 'want/index'
  get 'search/index'

  resources :user

  resources :follow_relationships, only: [:create, :destroy]

  get 'user_items/create'

  resources :items do
    get "user_items/create"
    get "user_items/destroy"
    get "want_items/create"
    get "want_items/destroy"
  end


  root to: "tried#index"
  get 'top/index'
end