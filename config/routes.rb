Rails.application.routes.draw do
  devise_for :submitters, :controllers => { registrations: 'submitters/registrations' }
  root to: 'visitors#index'
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :users
end
