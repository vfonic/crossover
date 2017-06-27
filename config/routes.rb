Rails.application.routes.draw do
  resources :tickets
  devise_for :admins
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  mount_ember_app :frontend, to: "/"
end
