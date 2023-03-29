Rails.application.routes.draw do

  devise_for :users, controllers: {
  registrations: "user/registrations",
  sessions: "user/sessions"

  }

  devise_for :admin, controllers: {
  sessions: "admin/sessions"
  }
  root 'user/homes#top'

  namespace :admin do
    resources :store_informations, only:[:new,:index,:show,:edit,:create,:update]
    resources :users, only:[:index,:edit,:show,:update]
    resources :comments, only:[:index,:show,:destroy]
    resources :store_comments, only:[:index,:show,:destroy]
    root 'homes#top'
  end


  namespace :user do
    resources :users, only:[:edit,:show,:update,:quit,:out]
    get "/user/:id/quit" => "users#quit", as: "quit"
    patch "/users/:id/out" => "users#out", as: "out"
    post 'users/:id' => 'users#show'
    resources :posts, only:[:new,:show,:index,:edit,:create,:update,:destroy] do
      resources :comments, only:[:create,:destroy]
    end
    resources :store_informations, only:[:index,:show,:create,:update] do
      resources :store_comments, only:[:create,:destroy]
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
