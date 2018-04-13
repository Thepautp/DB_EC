Rails.application.routes.draw do
  root 'home_page#home'
  
  get 'home_page/home'

  get 'suppliers/index'

  get 'suppliers/show'

  get 'customers/index'

  get 'customers/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
