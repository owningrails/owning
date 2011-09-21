Owning::Application.routes.draw do
  devise_for :users
  
  resources :tickets do
    resources :comments, :only => :create
  end
  
  root :to => 'home#index'
end
