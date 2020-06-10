Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'surveys/index'
      post 'surveys/create'
      get '/show/:id', to: 'surveys#show'
      delete '/destroy/:id', to: 'surveys#destroy'

    end
  end
  resources :choices
  root 'homepage#index'
  get '/*path' => 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
