Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/tasks/complete', to: 'tasks#complete'
  get '/tasks/incomplete', to: 'tasks#incomplete'

  get '/tasks/:id', to: 'tasks#show'
  get '/lists/:id', to: 'lists#show'

  post '/tasks/:id', to: 'tasks#create'
  post '/lists/:id', to: 'lists#create'

  put '/tasks/:id', to: 'tasks#update'
  put '/lists/:id', to: 'lists#update'

  delete '/tasks/:id', to: 'tasks#destroy'
  delete '/lists/:id', to: 'lists#destroy'

  get '/tasks', to: 'tasks#index'
  get '/', to: 'tasks#index'
  get '/lists', to: 'lists#index'

end
