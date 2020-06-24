Rails.application.routes.draw do

  get 'main/index'

  get 'bands/new'

  get 'genres/new'

  resources :bands do
    resources :weblinks
  end

  resources :genres

  root 'main#index'

end
