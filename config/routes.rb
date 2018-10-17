Rails.application.routes.draw do
  get 'home' => 'home#index'
  root to: 'home#index'
  get 'about' => 'about#index'
  get 'movies' => 'movies#index'
  get 'movies/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
