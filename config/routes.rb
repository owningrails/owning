Owning::Application.routes.draw do
  devise_for :users
  
  resources :tickets do
    resources :comments
  end
  
  root :to => 'home#index'
end
