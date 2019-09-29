Rails.application.routes.draw do
  resources :conversations
  resources :messages
  resources :users
  resources :pickems
  post '/login', to: 'auth#create'
  mount ActionCable.server => '/cable'
end
