Rails.application.routes.draw do
  
 scope path: 'admin', as: 'admin' do
  resources :opinions, only: [:index, :edit, :update, :show, :destroy] do
    collection do
      get :accept_index
    end
  end
end

  resources :opinions, only: [:index, :new, :create, :show, :update]

  resources :executions do
  	member do
    	delete :delete_image_attachment
  	end
  end
  
  resources :messages  
  resources :jobs
  devise_for :users
  get 'services/index'
  get 'about/index'
  resources :posts
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
