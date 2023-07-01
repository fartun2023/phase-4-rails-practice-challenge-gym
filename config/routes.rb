Rails.application.routes.draw do
  resources :gyms, except: [:new, :edit]
  resources :clients, except: [:new, :edit]

  get '/memberships', to: 'memberships#create'
  delete '/memberships/:id', to: 'memberships#destroy'
end