Rails.application.routes.draw do
  resources :managers
  resources :events
  resources :employees do
    resources :events
  end
  resources :locations

  root 'locations#index'
end
