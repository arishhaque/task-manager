Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"
  get 'home/index', to: 'task#index'
  get 'about', to: 'about#index'

  # Tasks routes
  get 'tasks', to: 'task#index'
  get 'tasks/new', to: 'task#new'
  get 'tasks/edit/:id', to: 'task#edit'

  # Category routes
  get 'categories/', to: 'category#index'
  get 'categories/show', to: 'category#show'
  get 'categories/new', to: 'category#new'
  get 'categories/edit/:id', to: 'category#edit'
  get 'categories/delete', to: 'category#delete'
end
