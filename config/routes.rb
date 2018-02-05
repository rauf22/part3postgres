Rails.application.routes.draw do
  resources :line_items
  resources :carts
	  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'pages/home'

  get 'pages/men'

  get 'pages/women'

  get 'pages/kids'

  get 'pages/sale'

  get 'pages/aboutAs'

  get 'pages/support'

  root 'pages#home'

	resources :menu
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
