Rails.application.routes.draw do
	root 'products#index'

	# get '/products/new', to: 'products#new'
  resources :products

end
