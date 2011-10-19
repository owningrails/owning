Owning::Application.routes.draw do
  resources :rooms do
    resources :messages, :only => :create
  end

  devise_for :users
  
  root :to => 'rooms#index'
end
