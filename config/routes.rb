Rails.application.routes.draw do
  devise_for :users
	get 'tried/index'
	get 'top/index'
  root to: "top#index"
end
