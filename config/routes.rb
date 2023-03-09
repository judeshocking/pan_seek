Rails.application.routes.draw do

  namespace :admin do
    resources :store_informations, only:[:new,:index,:show,:edit,:create,:update]
    root 'homes#top'
  end
  namespace :user do
    root "homes#top"
    resources :store_informations, only:[:index,:show,:create,:update] do
      resources :comments, only:[:create]
    end
    resources :posts, only:[:new,:show,:index,:edit,:create,:update,:destroy]
    get "search" => "posts#search"
    resources :users, only:[:edit,:show,:update,:quit,:out]
  end



  devise_for :users, controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
  }


  devise_for :admin, controllers: {
  sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
