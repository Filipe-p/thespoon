Rails.application.routes.draw do

#Verb     Path(url)   controller#action(method)    Prefix
  get 'about', to: 'pages#about'
  get 'contacts', to: 'pages#contacts'

  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'


  get 'restaurants', to: 'restaurants#index'
  post 'restaurants', to: 'restaurants#create'

  root to: 'pages#home'
  #get '/', to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
