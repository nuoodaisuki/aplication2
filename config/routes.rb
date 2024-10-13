Rails.application.routes.draw do
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
  get 'homes/about' => 'homes#about', as: 'about'
  root to: "homes#top"
end
