require 'rack/router'

router = Rack::Router.new do
  get '/categories', to: 'categories#index'
  get '/categories/:id', to: 'categories#show'
  post '/categories', to: 'categories#create'
  put '/categories/:id', to: 'categories#update'
  patch '/categories/:id', to: 'categories#update'
  delete '/categories/:id', to: 'categories#destroy'

  get '/products', to: 'products#index'
  get '/products/:id', to: 'products#show'
  post '/products', to: 'products#create'
  put '/products/:id', to: 'products#update'
  patch '/products/:id', to: 'products#update'
  delete '/products/:id', to: 'products#destroy'

  get '/orders', to: 'orders#index'
  get '/orders/:id', to: 'orders#show'
  post '/orders', to: 'orders#create'
  put '/orders/:id', to: 'orders#update'
  patch '/orders/:id', to: 'orders#update'
  delete '/orders/:id', to: 'orders#destroy'

  get '/order_items', to: 'order_items#index'
  get '/order_items/:id', to: 'order_items#show'
  post '/order_items', to: 'order_items#create'
  put '/order_items/:id', to: 'order_items#update'
  patch '/order_items/:id', to: 'order_items#update'
  delete '/order_items/:id', to: 'order_items#destroy'
end
