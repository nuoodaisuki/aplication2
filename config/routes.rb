Rails.application.routes.draw do
  resources :post_images, only: [:new, :create, :index, :show]
  devise_for :users
  get 'homes/about' => 'homes#about', as: 'about'
  root to: "homes#top"
end
