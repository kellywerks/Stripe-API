Donations::Application.routes.draw do
  root to: 'organizations#index'
  resources :organizations
  resources :charges
end
