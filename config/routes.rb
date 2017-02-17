Rails.application.routes.draw do
  get "/jobs", to: 'jobs#index'
  get "/jobs/new", to: 'jobs#new'
  get "/jobs/:id", to: 'jobs#show'
  post "/jobs", to: 'jobs#create'
end
