Rails.application.routes.draw do
  devise_for :users

  resources :houses

  resources :starts
  resources :ends
  resources :routes do
    resources :route_times, shallow: true
  end

  root 'houses#index'

end
