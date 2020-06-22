Rails.application.routes.draw do

  get 'main/index'
  get 'main/submit'

  resources :bands do
    resources :weblinks
  end

  get 'bands/new'

  root 'main#index'

end
