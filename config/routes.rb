Rails.application.routes.draw do
  get 'articles/index'

  get 'articles/view'

  get 'articles/new'

  get 'articles/show'

  resources :articles
end
