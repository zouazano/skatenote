Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'tried/index'
  get 'want/index'
  get 'search/index'

  get 'timeline/index'

  resources :user do
    get "want_items"
  end

  resources :follow_relationships, only: [:create, :destroy]

  get 'user_items/create'

  get 'items/create'
  resources :items do
    resources :user_items, only: %i[index new create]

    get "user_items/destroy"
  
    get "want_items/create"
    get "want_items/destroy"
  end


  root to: "tried#index"
  get 'top/index'
end