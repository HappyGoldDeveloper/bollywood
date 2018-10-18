Rails.application.routes.draw do
  get 'genres' => 'genres#index'
  get 'genres/show'
  # get 'actors'=> 'actors#index'
  # get 'actors/:id' => 'actors#show'
  get 'home' => 'home#index'
  root to: 'home#index'
  get 'about' => 'about#index'
  resources :movies, only:[:index, :show]
  resources :actors, only:[:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
