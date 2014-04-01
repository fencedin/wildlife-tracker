WildlifeTracker::Application.routes.draw do
  match('species', {via: :get, to: 'species#index'})
end
