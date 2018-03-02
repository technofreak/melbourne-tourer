Rails.application.routes.draw do
  resources :route_by_public_transports
  resources :notes
  resources :best_visiting_times
  resources :operating_hours
  resources :plus_codes
  resources :categories
  resources :places

  root 'places#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
