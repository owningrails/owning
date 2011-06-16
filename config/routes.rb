Owning::Application.routes.draw do
  devise_for :users
  
  resources :tickets
  
  root :to => 'home#index'
end
