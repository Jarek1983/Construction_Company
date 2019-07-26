Rails.application.routes.draw do
  
  devise_for :users
  get 'services/index'
  get 'about/index'
  resources :posts
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
