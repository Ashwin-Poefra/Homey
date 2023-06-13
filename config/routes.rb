Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "project#index", as: 'project_index'
  resources :status_logs, only: [:create]
end
