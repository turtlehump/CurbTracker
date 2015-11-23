Rails.application.routes.draw do
  resources :starts
  devise_for :users

  root 'starts#index'

end
