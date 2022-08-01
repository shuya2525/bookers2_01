Rails.application.routes.draw do
  root :to => 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  devise_for :users

  resources :books, only: [:new, :index, :show, :create, :edit, :destroy, :update]
  resources :users, only: [:new, :index, :show, :create, :edit, :destroy, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end