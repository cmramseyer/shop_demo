Rails.application.routes.draw do

	root to: 'home#index'

  resources :searches, only: [:create]
  resources :results, only: [:index]
  resources :products do
    resources :product_comments
    resources :rate, only: [:create]
  end

  resources :orders do
    resources :payments
  end

  resources :users do
    resources :my_orders
  end

  resources :session_cart, only: [:index, :create]
  resources :clean_session_cart, only: [:create]

  resources :product_comments do
    resources :like, only: [:create]
  end
  resources :reviews
  resources :check_credit_card_amount

  resources :suggestions, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :products
    end
  end

  devise_for :users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
