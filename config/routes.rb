Rails.application.routes.draw do
  resources :categories do
    resources :transactions
  end
  devise_for :users
  root 'splash_screen#home'
end
