Rails.application.routes.draw do
  resources :clients
  resources :invoices do
    resources :lines
  end
  root to: "invoices#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
