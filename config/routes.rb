Rails.application.routes.draw do

  devise_for :users
  resources :tickets 

  root 'welcome#index'

end
