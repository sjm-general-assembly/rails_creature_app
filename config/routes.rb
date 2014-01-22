CreatureApp::Application.routes.draw do

  root to: "creatures#index"

  # GET - list all creatures
  get '/creatures', to: "creatures#list"

  # GET - requesting a page with a form, for new creature
  get '/creatures/new', to: "creatures#new"

  # GET - a request to show a single/specific creature
  get '/creatures/:id', to: "creatures#show"

  # GET - a request to get edit form for a specific existing creature
  get '/creatures/:id/edit', to: "creatures#edit"

  # POST - the form has submitted a post with new creature data
  post '/creatures', to: "creatures#create"

  # POST - delete current creature
  post '/creatures/:id/destroy', to: "creatures#destroy"
  
  # PUT (pseudo) - update using the data from the edit form
  put '/creatures/:id', to: "creatures#update"

end
