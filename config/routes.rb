Rails.application.routes.draw do
  namespace :api do
    resources :tickets
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  mount_ember_app :frontend, to: "/"
end
