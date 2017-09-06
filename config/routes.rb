Rails.application.routes.draw do
  resources :charges
  resources :clients
  resources :invoices do
    resources :lines
  end
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
    root "invoices#index", as: :authenticated_root
  end
  root "pages#index"
end
