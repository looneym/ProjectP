Rails.application.routes.draw do
  get 'company/show'

  get 'company/index'

  get 'controller/show'

  get 'controller/index'

  get 'conversation/list'

  get 'conversation/company'

  get 'conversation/tag'

  get 'conversation/fetch'

  get 'user/ping'

  resources :posts, :companies
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
