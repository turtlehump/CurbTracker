Rails.application.routes.draw do
  devise_for :users

  resources :starts
  resources :ends
  resources :routes

  root 'starts#index'

end
