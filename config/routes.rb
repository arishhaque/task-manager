Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"
  get 'home/index', to: 'tasks#index'
  get 'about', to: 'about#index'

  # Tasks routes
  resources :tasks do
    member do
      get :delete
    end
  end
  # get 'tasks', to: 'tasks#index'
  # get 'tasks/new', to: 'tasks#new'
  # get 'tasks/:id/edit', to: 'tasks#edit'
  # get 'tasks/:id/delete', to: 'tasks#edit'
  resources :categories do
    member do
      get :delete
    end
  end
  # Category routes
  # get 'categories/', to: 'categories#index'
  # get 'categories/show', to: 'categories#show'
  # get 'categories/new', to: 'categories#new'
  # get 'categories/:id/edit', to: 'categories#edit'
  # get 'categories/:id/delete', to: 'categories#delete'
end
