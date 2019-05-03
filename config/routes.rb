Rails.application.routes.draw do
  resources :comments
  resources :favorites
  get '/articles/find_articles', to: 'articles#find_articles', as: 'find_articles'
  resources :articles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
