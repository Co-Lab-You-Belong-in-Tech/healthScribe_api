Rails.application.routes.draw do
  resources :moods
  devise_for :users
  resources :users do
      resources :symptoms
    resources :medications
    resources :drinks
    resources :foods
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
