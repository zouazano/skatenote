Rails.application.routes.draw do
  devise_for :users
	get 'tried/index'
	root to: "tried#index"
	get 'top/index'
end
