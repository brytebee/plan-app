Rails.application.routes.draw do
  resources :categories do
    resources :transactions
  end
  devise_for :users
  devise_scope :user do
    authenticated do
      root :to => 'category#index' as: authenticated_root
      get '/users/sign_out' => 'devise/session#destroy'
    end
  end
  root 'splash_screen#home'
end
