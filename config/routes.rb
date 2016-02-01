Rails.application.routes.draw do
  resources :users
  resource :session
  resources :comments
  resources :goals
end
