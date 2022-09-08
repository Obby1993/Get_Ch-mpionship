Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show] do
    resources :reviews, only: :create
  end


  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :events do
    resources :teams, only: [:index, :create, :new]
  end
  resources :teams, only: [:destroy, :edit, :update, :show]  do
    resources :select_players, only: [:create, :destroy, :new]
  end

  resources :select_players, only: [:destroy] do
    member do
      patch :validate
      patch :reading
    end
  end
end
