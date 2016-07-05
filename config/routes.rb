Rails.application.routes.draw do
  namespace :api do
    resources :users
    resources :lists
    resources :items
  end
end
