Rails.application.routes.draw do
  resources :lessons
  resources :gyms
  root to: 'dashboard#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
