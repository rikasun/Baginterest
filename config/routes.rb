Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show] do
      resources :boards, only: :index
    end
    resource :session, only: [:new, :create, :destroy]
    resources :boards, only: [:show, :create, :update, :destroy]
  end

  root "static_pages#root"
end
