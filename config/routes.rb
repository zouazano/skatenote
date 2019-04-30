Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'tried/index'
  get 'want/index'
  get 'search/index'

  get 'timeline/index'
  get 'timeline/friends'
  get 'shared/back'

  resources :user do
    get "followings"
    get "followers"
    get "want_items"
    get "relationships/create"
    get "relationships/destroy"
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


  root to: "timeline#index"
  get 'top/index'
end