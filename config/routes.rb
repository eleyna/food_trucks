FoodTruckz::Application.routes.draw do
  devise_for :users
  root :to => 'favorites#index'
  get '/' => 'favorites#index', as: :favorites_index
  get '/foodtrucks/new' => 'foodtrucks#new', as: :foodtrucks_new
  post '/foodtrucks' => 'foodtrucks#create', as: :foodtrucks_create
  get '/foodtrucks' => 'foodtrucks#index', as: :foodtrucks
  put '/foodtrucks/:id' => 'foodtrucks#update'
  get '/foodtrucks/:id' => 'foodtrucks#edit', as: :edit
  post '/:user/favorite/:id' => 'favorites#update', as: :favorite
  resources :foodtrucks
end
