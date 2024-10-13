Rails.application.routes.draw do
  resources :postimages, only: [:new, :index, :show]
  devise_for :users
  get 'homes/about' => 'homes#about', as: 'about'
root to: "homes#top"
end
