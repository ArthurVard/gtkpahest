Rails.application.routes.draw do

  resources :people

  root 'assets#index'
  
  resources :items, only: :index

  resources :rooms do
    resources :items
  end

  resources :assets 
end
