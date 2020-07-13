Rails.application.routes.draw do

  get 'main/index'

  get 'bands/new'

  get 'bands/list'

  get 'genres/new'

  get 'artists/new'

  get 'release_types/new'

  get 'releases/new'

  # defines the objects that we have
  resources :bands do
    # this is a nested object inside an object
    resources :weblinks
  end

  resources :genres

  resources :artists

  resources :release_types

  resources :releases

  root 'main#index'

end
