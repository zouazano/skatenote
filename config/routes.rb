Rails.application.routes.draw do
  devise_for :users
  get 'tried/index'
  get 'want/index'
  get 'search/index'

  get 'timeline/index'

  resources :user

  resources :follow_relationships, only: [:create, :destroy]

  get 'user_items/create'


  resources :items do
    resources :user_items, only: %i[index new create]

    get "user_items/destroy"
  
    get "want_items/create"
    get "want_items/destroy"
  end


  root to: "tried#index"
  get 'top/index'
end