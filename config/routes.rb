Rails.application.routes.draw do

  devise_for :users, controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
  }

  devise_for :admin, controllers: {
  sessions: "admin/sessions"
  }

  namespace :admin do
    resources :store_informations, only:[:new,:index,:show,:edit,:create,:update]
    root 'homes#top'
  end

  namespace :user do
    resources :users, only:[:edit,:show,:update,:quit,:out]
    resources :posts, only:[:new,:show,:index,:edit,:create,:update,:destroy] do
      resources :comments, only:[:create,:destroy]
    end
    resources :store_informations, only:[:index,:show,:create,:update] do
      resources :store_comments, only:[:create,:destroy]
    end
    root "homes#top"
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
