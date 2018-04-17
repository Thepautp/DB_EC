Rails.application.routes.draw do
  get 'products/index'

  get 'products/show'

  root 'home_page#home'
  
  get 'home_page/home'

  get 'suppliers/index', to: "suppliers#index"

  get 'suppliers/show'

  get 'customers/index', to: "customers#index"

  get 'customers/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
