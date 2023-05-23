Rails.application.routes.draw do

  # list all the tasks
  get 'tasks', to: 'tasks#index'

  # create new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # view the details
  get 'tasks/:id', to: 'tasks#show', as: :task

  # edit d'une task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # remove d'un restau
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy_task
end
