Rails.application.routes.draw do
	root 'gossips#index'
  resources :gossips do
  	resources :comments
    resources :likes, only:[:create, :destroy]
  end
  resources :authors
  resources :cities
  resources :sessions, only:[:new,:create,:destroy]

  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  get '/welcome/:first_name', to: 'dynamic_pages#welcome', as: 'welcome'
end