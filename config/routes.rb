Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:create, :new, :index, :show] do
    collection do
      get :japanese
    end
    resources :reviews, only: [:index, :create, :new]
  end
  resources :reviews, only: [:destroy]
end
