Rails.application.routes.draw do
  resources :events
  resources :employees do
    resources :events, only: [:new, :create]
  end
  resources :locations
end
