Rails.application.routes.draw do
  resources :events
  resources :employees do
    resources :events
  end
end
