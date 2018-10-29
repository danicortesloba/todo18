Rails.application.routes.draw do
  resources :tasks
  get 'tasks/:id', to: 'tasks#show', as:'task_show'
  get 'tasks/:id/complete', to: 'tasks#complete', as:'tasks_complete'
  delete 'tasks/:id/incomplete', to: 'tasks#incomplete', as:'tasks_incomplete'
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root to: 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
