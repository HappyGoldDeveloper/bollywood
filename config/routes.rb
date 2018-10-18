Rails.application.routes.draw do
  get 'genres' => 'genres#index'
  get 'genres/show'
  get 'actors'=> 'actors#index'
  get 'actors/:id' => 'actors#show'
  get 'home' => 'home#index'
  root to: 'home#index'
  get 'about' => 'about#index'
  get 'movies' => 'movies#index'
  get 'movies/:id' , to: 'movies#show' , id: /\d+/
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
