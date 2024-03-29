Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #READ
  get '/tasks', to: "tasks#index", as: :task_index
  get '/tasks/:id', to: "tasks#show", as: :task

  #CREATE
  get '/new', to: "tasks#new", as: :new_task
  post '/tasks', to: "tasks#create"

  #UPDATE
  get '/tasks/:id/edit', to: "tasks#edit", as: :edit_task
  patch 'tasks/:id', to: "tasks#update"

  #DESTROY
  delete 'task/:id', to: "tasks#destroy", as: :delete_task
end
