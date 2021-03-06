Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch '/capture/:id', to: 'pokemons#capture', as: "capture"
  patch '/damage/:id', to: 'pokemons#damage', as: "damage"

  resources :pokemons
end
