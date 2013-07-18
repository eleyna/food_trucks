FoodTruckz::Application.routes.draw do
  devise_for :users
  root :to => 'favorites#index'
  get '/' => 'favorites#index', as: :favorites_index
  #root :to => 'users#index'
  #get '/' => 'user#index', as: :user_index
  get '/foodtrucks/new' => 'foodtrucks#new', as: :foodtrucks_new
  post '/foodtrucks/create' => 'foodtrucks#create', as: :foodtrucks_create
  get '/foodtrucks' => 'foodtrucks#index', as: :foodtrucks
  put '/foodtruck/:id/edit' => 'foodtrucks#update', as: :update
  get '/foodtruck/:id/edit' => 'foodtrucks#edit', as: :edit
  post '/:user/favorite/:id' => 'favorites#update', as: :favorite
  #get '/:id/favorites' => 'favorites#index', as: :favorite_index
end
