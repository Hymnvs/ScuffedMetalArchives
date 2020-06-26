Rails.application.routes.draw do

  get 'main/index'

  get 'bands/new'

  get 'genres/new'

  get 'artists/new'

  resources :bands do
    resources :weblinks
  end

  resources :genres

  resources :artists

  root 'main#index'

end
