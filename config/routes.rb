Owning::Application.routes.draw do
  devise_for :users
  
  resources :rooms do
    resources :messages
  end
  
  root :to => 'rooms#index'
end
