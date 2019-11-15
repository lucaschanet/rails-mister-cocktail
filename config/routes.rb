Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :cocktails do
      resources :doses, only: [:new, :create]
    end
  resources :doses, only: [:destroy]
  root to: 'articles#index'
  resources :articles, except: :index
end
