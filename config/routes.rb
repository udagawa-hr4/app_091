Rails.application.routes.draw do
  get 'blogs/index'
  resources :blogs
  devise_for :users
  root to: "posts#index"
  resources :posts,only:[:index]
end
