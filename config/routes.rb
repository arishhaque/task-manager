Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"
  get 'home/index', to: 'task#index'
  get 'about', to: 'about#index'
  get 'tasks', to: 'task#index'
  get 'tasks/edit/:id', to: 'task#edit'
end
