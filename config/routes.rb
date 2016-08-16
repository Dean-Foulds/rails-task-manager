Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
  # get "tasks", to: "tasks#index"
  # post "/", to: "tasks#create"
  # get "tasks/new", to: "tasks#new"
  # get "tasks/edit", to: "tasks#edit"
  # get "tasks/:id", to: "tasks#show"
  # patch "tasks/:id", to: "tasks#update"
  # put "tasks/:id", to: "tasks#update"
  # delete "tasks/:id", to: "tasks#destroy"
  # resources :tasks, only: [:index, :show, :edit, :destroy]
end
