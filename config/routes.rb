Rails.application.routes.draw do
  resources :scores
  root 'scores#index'
end
