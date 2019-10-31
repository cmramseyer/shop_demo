Rails.application.routes.draw do

	root to: 'home#index'

  resources :searches, only: [:create]
  resources :results, only: [:index]
  resources :products do
    resources :product_comments
    resources :purchases
    resources :rate, only: [:create]
  end
  resources :reviews
  resources :purchases do
    resources :check_credit_card_amount
  end

  resources :suggestions, only: [:index]

  devise_for :users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
