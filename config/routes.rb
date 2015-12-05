Rails.application.routes.draw do
  root to: 'contacts#index'
  get '/contacts' => 'contacts#index'
  get '/contacts/new' => 'contacts#new'
  post '/contacts', to: 'contacts#create'
  get '/contacts/:id' => 'contacts#details'
end
