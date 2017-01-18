Rails.application.routes.draw do
  devise_for :users
  resources :comments
  root 'blog_posts#index'

  resources :blog_posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
