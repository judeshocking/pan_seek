Rails.application.routes.draw do
  namespace :admin do
    resources :store_informations, only:[:new,:index,:edit,:create,:update]
    root 'homes#top'
  end
  namespace :user do
    get 'users/show'
    get 'users/edit'
    get 'users/quit'
  end
  namespace :user do
    get 'comments/new'
    get 'comments/index'
    get 'comments/show'
    get 'comments/edit'
  end
  namespace :user do
    get 'homes/top'
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
