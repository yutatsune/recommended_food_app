Rails.application.routes.draw do
  root "foods#index"
  devise_for :users
  resources :foods do
    resource :likes, only: [:create, :destroy]
  end
end
