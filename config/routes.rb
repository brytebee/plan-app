Rails.application.routes.draw do
  resources :categories
  resources :transactions
  devise_for :users
  root 'splash_screen#home'
end
