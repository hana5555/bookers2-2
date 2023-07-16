Rails.application.routes.draw do

  devise_for :users

  #「/」はhomesコントローラーのTopページを表示
  root to: 'homes#top'

  #URLが「home/about」のとき、homesコントローラーのaboutアクションを探しに行く
  get'home/about' => 'homes#about', as: 'about'

  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
