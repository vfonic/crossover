Rails.application.routes.draw do
  namespace :api do
    resources :tickets
    get 'users/me', to: 'users#me'
    resources :users
  end

  namespace :admin do
    get 'reports/last', to: 'reports#show'
  end

  devise_for :users, controllers: { sessions: 'users/sessions' }

  mount_ember_app :frontend, to: "/"
end
