Rails.application.routes.draw do
  resources :team_odds
  resources :conversations
  resources :messages
  resources :users
  resources :pickems
  post '/login', to: 'auth#create'
  mount ActionCable.server => '/cable'
end
