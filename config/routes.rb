Rails.application.routes.draw do
  resources :blogs
   get 'welcome/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

   get 'blogs/index'
   root 'blogs#index'
     get '/contact', to:'blogs#contact'

   
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
