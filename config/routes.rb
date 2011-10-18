Owning::Application.routes.draw do
  resources :rooms

  devise_for :users
  
  root :to => 'rooms#index'
end
