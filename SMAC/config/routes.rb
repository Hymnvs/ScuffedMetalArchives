Rails.application.routes.draw do

  get 'main/index'
  get 'main/submit'

  resources :bands

  get 'bands/new'

  root 'main#index'

end
