Rails.application.routes.draw do
  devise_for :users
	get 'tried/index'
	get 'want/index'
	get 'search/index'

	root to: "tried#index"
	get 'top/index'
end
