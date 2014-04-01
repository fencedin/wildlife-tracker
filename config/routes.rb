WildlifeTracker::Application.routes.draw do
  match('/', {:via => :get, :to => 'species#index'})
  match('species', {via: :get, to: 'species#index'})
  match('species', {via: :post, to: 'species#create'})
  match('species/:id/edit', {via: :get, to: 'species#edit'})
  match('species/:id', {via: [:patch, :put], to: 'species#update'})
  match('species/:id', {via: :delete, to: 'species#destroy'})
end
