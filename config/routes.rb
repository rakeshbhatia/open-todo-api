Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users
    resources :lists
    resources :items
  end
end
