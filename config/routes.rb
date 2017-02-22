Rails.application.routes.draw do
mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  get "/jobs", to: 'jobs#index'
  get "/jobs/new", to: 'jobs#new'
  get "/jobs/:id", to: 'jobs#show'
  post "/jobs", to: 'jobs#create'
  get "/jobs/:id/edit", to: 'jobs#edit'
  patch "/jobs/:id", to: 'jobs#update'
  delete "/jobs/:id", to: 'jobs#destroy'
end
