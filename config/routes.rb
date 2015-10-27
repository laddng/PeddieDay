Rails.application.routes.draw do
  resources :scores
  root 'scores#index'
  get 'admin', controller: "scores", action: "admin"
end
