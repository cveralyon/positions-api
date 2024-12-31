Rails.application.routes.draw do
  resources :positions
  resources :clients, only: [:index]

end

