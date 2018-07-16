Rails.application.routes.draw do
	get 'blogs/index'
   root 'blogs#index'
  
  
   get 'welcome/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

   resources :blogs do
  resources :comments do
    resources :replies
     get '/contact', to:'blogs/#contact'

    end
  end

  post '/likes' => 'likes#create', as: :like_create
  post '/dislikes' => 'likes#dislike', as: :dislike_create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
