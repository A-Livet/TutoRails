Rails.application.routes.draw do

  get 'accounts/index'
  get 'accounts/show'
  get 'accounts/update'
  devise_for :admins

  devise_for :users, controllers: {
      sessions: 'users/sessions'
    }


  root :to => "pages#home"
  get 'Tuto' => 'pages#home'

  post 'movies/:movie_id' => 'movies#addActor'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  resources :movies do
    resources :cast_members
  end
  resources :cast_members do
    resources :movies
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
