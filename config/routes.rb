Rails.application.routes.draw do
  devise_for :users
	root 'products#index'

	# get '/products/new', to: 'products#new'
  resources :products

end
