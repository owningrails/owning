Owning::Application.routes.draw do
  get "home/index"
  
  resources :tickets do
    resources :comments
  end

  devise_for :users

  root :to => 'home#index'
end
