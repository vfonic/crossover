Rails.application.routes.draw do
  namespace :api do
    resources :tickets
    get 'users/me', to: 'users#show'
  end

  devise_for :users, controllers: { sessions: 'users/sessions' }

  mount_ember_app :frontend, to: "/"
  mount_ember_app :admin, to: "/admin"
end
