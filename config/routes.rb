Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/tasks/:id', to: 'tasks#show'
  get '/lists/:id', to: 'lists#show'

  post '/tasks/:id', to: 'tasks#create'

  get '/tasks', to: 'tasks#index'
  get '/lists', to: 'lists#index'
end
