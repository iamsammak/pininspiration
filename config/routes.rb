Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show] do
      get "followers", on: :collection
      get "followees", on: :collection
    end
    # http://guides.rubyonrails.org/routing.html

    resource :session, only: [:create, :destroy, :show]
    resources :pins, only: [:index, :show, :create, :update, :destroy]
    resources :boards, only: [:index, :show, :create, :update, :destroy]
    resource :follow, only: [:create, :destroy]
  end

  root to: 'static_pages#root'
end
