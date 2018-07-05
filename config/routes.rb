Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Set Views/Home/index is the main page
  root 'home#index'
  get 'home/index', to: 'home#index'
  
  get 'home/about'
  get 'home/contact'
  get 'home/faq'
  get 'home/services'
  get 'home/car_repair'
  get 'home/get_car_models'
end
