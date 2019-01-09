Rails.application.routes.draw do
	get 'tried/index'
	get 'top/index'
  root to: "top#index"
end
