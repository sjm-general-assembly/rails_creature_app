CreatureApp::Application.routes.draw do

  root to: "creatures#index"

  # just to be ReSTful
  get '/creatures', to: "creatures#index"

  # GET - requesting a page with a form, for new creature
  get '/creatures/new', to: "creatures#new"

  # POST - the form has submitted a post with new creature data
  post '/creatures', to: "creatures#create"
  
end
