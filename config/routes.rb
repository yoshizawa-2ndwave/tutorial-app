Rails.application.routes.draw do
  resources :blogs
  resources :comments
  root 'blogs#index'
end
