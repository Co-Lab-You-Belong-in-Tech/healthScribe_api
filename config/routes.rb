Rails.application.routes.draw do
  resources :medications
  resources :drinks
  resources :foods
  devise_for :users
  resources :users do
    resources :diseases
    resources :symptoms
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
