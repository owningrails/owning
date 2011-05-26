Owning::Application.routes.draw do
  get "home/index"
  
  resources :tickets

  devise_for :users

  root :to => 'home#index'
end
