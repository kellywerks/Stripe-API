Donations::Application.routes.draw do
  root to: 'organization#index'
  resources :organizations
  resources :charges
end
