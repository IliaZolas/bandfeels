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
    root 'station#index'

    resources :albums do
      resources :tracks
    end

    resources :tracks do
      resources :likes, only: [:create, :destroy]
    end

    get '/likes', to: 'likes#index', as: :index 
    
    resources :station, only: [:index, :show]

    resources :playlist_tracks,  only: [:create]

    resources :users,  only: [:index, :show, :update]

    resources :playlists do
      resources :tracks 
    end


    # resources :likes do
    #   resources :tracks
    # end

    # resources :tracks
    # resoures :user
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
