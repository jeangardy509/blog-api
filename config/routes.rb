# frozen_string_literal: true

Rails.application.routes.draw do
  resources :blogs
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  post '/blogs' => 'blogs#create'
  get '/blogs' => 'blogs#index'
  get '/blogs/:id' => 'blogs#show'
  patch '/blogs/:id' => 'blogss#update'
  get '/blogs' => 'budgets#get'
  delete '/blogs' => 'blogs#delete'
end
