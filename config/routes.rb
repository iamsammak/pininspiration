Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy, :show]
    resources :pins, only: [:index, :show, :create, :update, :destory]
    resources :boards, only: [:index, :show, :create, :update, :destory]
  end

  root to: 'static_pages#root'
end
