Rails.application.routes.draw do
  resources :directors ,only:[:index, :show]
  resources :genres, only:[:index, :show]
  resources :home , only:[:index]
  resources :about , only:[:index]
  root to: 'home#index'
  resources :movies, only:[:index, :show]
  resources :actors, only:[:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
