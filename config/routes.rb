Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show] do
      resources :boards, only: :index
      resources :pins, only: :index
    end
    resource :session, only: [:new, :create, :destroy]
    resources :boards, only: [:show, :create, :update, :destroy]
    resources :pins, only: [:index, :show, :create, :update, :destroy]
    resources :pinboards, only: [:create, :destroy]
  end

  root "static_pages#root"
end
