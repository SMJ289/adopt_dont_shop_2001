Rails.application.routes.draw do
  get '/shelters', to: 'shelters#index'
  get '/shelters/new', to: 'shelters#new'
  get '/shelters/:id', to: 'shelters#show'
  get '/shelters/:id/edit', to: 'shelters#edit'
  patch '/shelters/:id', to: 'shelters#update'
  post '/shelters', to: 'shelters#create'
  delete '/shelters/:id', to: 'shelters#destroy'

  get '/pets', to: 'pets#index'

end
