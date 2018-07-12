Rails.application.routes.draw do
	get 'blogs/index'
   root 'blogs#index'
  
  
   get 'welcome/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

   resources :blogs do
  resources :comments
     get '/contact', to:'blogs#contact'

   
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
