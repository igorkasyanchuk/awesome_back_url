Rails.application.routes.draw do
  resources :users do
    member do
      get :reload
    end
  end
  root to: 'users#index'
end
