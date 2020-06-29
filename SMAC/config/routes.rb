Rails.application.routes.draw do

  get 'main/index'

  get 'bands/new'

  get 'genres/new'

  get 'artists/new'

  get 'release_types/new'

  # defines the objects that we have
  resources :bands do
    # this is a nested object inside an object
    resources :weblinks
  end

  resources :genres

  resources :artists

  resources :release_types

  root 'main#index'

end
