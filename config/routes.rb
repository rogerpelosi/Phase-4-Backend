Rails.application.routes.draw do
  
  resources :author_books

  resources :authors

  resources :books

  resources :users

  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
  
end
