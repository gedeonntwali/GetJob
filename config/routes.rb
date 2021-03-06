Rails.application.routes.draw do

  get "/jobs", to: 'jobs#index'
  post "/jobs/search", to: 'jobs#search'
  get "/jobs/new", to: 'jobs#new'
  get "/jobs/:id", to: 'jobs#show'
  post "/jobs", to: 'jobs#create'
  get "/jobs/:id/edit", to: 'jobs#edit'
  patch "/jobs/:id", to: 'jobs#update'
  delete "/jobs/:id", to: 'jobs#destroy'

  get "/", to: 'dashboard#dashboard'
  get "/help", to: 'dashboard#help'

  get "/companies", to: 'companies#index'
  get "/companies/new", to: 'companies#new'
  get "/companies/:id", to: 'companies#show'
  post "/companies", to: 'companies#create'
  get "/companies/:id/edit", to: 'companies#edit'
  patch "/companies/:id", to: 'companies#update'
  delete "/companies/:id", to: 'companies#destroy'

  get "/applications", to: 'applications#index'
  get "/applications/new", to: 'applications#new'
  get "/applications/:id", to: 'applications#show'
  post "/applications", to: 'applications#create'


  get "/users", to: 'users#index'
  get "/signup", to: 'users#new'
  post "/users", to: 'users#create'
  get "/users/:id", to: 'users#show'
  get "/notification", to: 'users#notification'

  get "/login", to: 'sessions#new'
  post "/login", to: 'sessions#create'
  get "/logout", to: 'sessions#destroy'

end
