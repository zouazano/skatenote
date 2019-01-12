Rails.application.routes.draw do
  devise_for :users
	get 'tried/index'
	get 'want/index'
	root to: "tried#index"
	get 'top/index'
end
