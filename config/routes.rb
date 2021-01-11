Rails.application.routes.draw do
  devise_for :users

  unauthenticated :user do
    devise_scope :user do
      get '/' => 'pages#home'
      get "/about" => "pages#about"
      get "/contact" => "pages#contact"
    end
  end

  authenticated :user do
    root 'pages#station'

    resources :albums do
      resources :tracks
    end

    resources :tracks

    resources :station, only:[:index]

    # get '/tracks/:id', to: 'tracks#playtrack', as: :playtrack 

    # resources :tracks
    # resoures :user
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
