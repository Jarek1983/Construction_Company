Rails.application.routes.draw do
  
  get 'executions/index'
  get 'executions/new'
  get 'executions/edit'
  get 'executions/show'
  get 'execution/index'
  get 'execution/new'
  get 'execution/edit'
  get 'execution/show'
  resources :messages  
  resources :jobs
  devise_for :users
  get 'services/index'
  get 'about/index'
  resources :posts
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
