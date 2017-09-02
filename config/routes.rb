Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :charges
  resources :clients
  resources :invoices do
    resources :lines
  end
  root to: "invoices#index"

  get '/payment_method' => 'users#payment'
  post '/add_card' => 'users#add_card'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
