Rails.application.routes.draw do
  get 'votes/create'

  get 'votes/destroy'

  devise_for :users
	root 'products#index'

	# get '/products/new', to: 'products#new'
  resources :products do
    resource :comments, only: [:create]
    resource :vote, only: [:create, :destroy]
  end

end
