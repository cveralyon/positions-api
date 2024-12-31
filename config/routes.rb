Rails.application.routes.draw do
  resources :positions
  resources :clients, only: [:index]
  post 'ai/generate', to: 'ai#generate'
end

