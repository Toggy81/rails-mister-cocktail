Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # routes for cocktails
  get    'cocktails',                         to: 'cocktails#index'
  get    'cocktails/new',                     to: 'cocktails#new'
  post   'cocktails',                         to: 'cocktails#create'
  # NB: The `show` route needs to be *after* `new` route.
  get    'cocktails/:id',                     to: 'cocktails#show', as: 'cocktail_show'
  # routes for doses
  get    'cocktails/:cocktail_id/doses/new',  to: 'doses#new', as: 'dose_new'
  post   'cocktails/:cocktail_id/doses',      to: 'doses#create'
  delete 'doses/:id',                         to: 'doses#destroy'
end
