WildlifeTracker::Application.routes.draw do
  match('/', {:via => :get, :to => 'species#index'})
  match('species', {via: :get, to: 'species#index'})
  match('species', {via: :post, to: 'species#create'})
  match('species/:id', {via: :get, to: 'species#show'})
  match('species/:id/edit', {via: :get, to: 'species#edit'})
  match('species/:id', {via: [:patch, :put], to: 'species#update'})
  match('species/:id', {via: :delete, to: 'species#destroy'})

  match('species/:species_id/sightings', {via: :post, to: 'sightings#create'})
  match('species/:species_id/sightings/new', {via: :get, to: 'sightings#new'})
  match('sightings/:id/edit', {via: :get, to: 'sightings#edit'})
  match('sightings/:id', {via: [:patch, :put], to: 'sightings#update'})
  match('sightings/:id', {via: :delete, to: 'sightings#destroy'})
end
