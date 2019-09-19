Rails.application.routes.draw do

	root to: 'home#index'

  resources :searches, only: [:create]
  resources :results, only: [:index]
  resources :products do
    resources :product_comments
  end
  resources :reviews

  devise_for :users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
