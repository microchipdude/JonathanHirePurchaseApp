Rails.application.routes.draw do
  resources :purchases
  resources :items
  resources :clients
  get 'dashboard/index'
  get 'client/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "dashboard#index"
end
