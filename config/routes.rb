Rails.application.routes.draw do
  
  get 'sessions/new'

  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale

  get 'products/index'

  get 'products/show'

  root 'home_page#home'
  
  get 'home_page/home'
  
  post 'login', to: "sessions#create"

  get 'suppliers/index', to: "suppliers#index"

  get 'supplier/:id', to: "suppliers#show", as: "supplier"

  get 'customers/index', to: "customers#index"

  get 'customers/show'
  
  get 'categorie/:type', to: "prod_types#show", as: "type"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
