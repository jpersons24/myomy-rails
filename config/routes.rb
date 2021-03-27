Rails.application.routes.draw do
  resources :foods
  resources :meals
  resources :exercises
  resources :workouts
  resources :weeks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end