Rails.application.routes.draw do
  devise_for :users
	get 'tried/index'
	get 'want/index'
	get 'search/index'
  
  resources :items

	root to: "tried#index"
	get 'top/index'
end
