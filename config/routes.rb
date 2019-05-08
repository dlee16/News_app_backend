Rails.application.routes.draw do
  post "/login", to: 'auth#login'
  get "/auto_login", to: 'auth#auto_login'
  get '/articles/find_articles', to: 'articles#find_articles', as: 'find_articles'
  resources :comments
  resources :favorites
  resources :articles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
