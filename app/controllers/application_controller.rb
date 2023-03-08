require 'sinatra/base'
class ApplicationController < Sinatra::Base
  
  get '/categories' do
    categories = Category.all
    categories.to_json
  end

  get '/categories/:id' do
    category = Category.find(params[:id])
    category.to_json
  end

  post '/categories' do
    category = Category.create(name: params[:name])
    category.to_json
  end

  put '/categories/:id' do
    category = Category.find(params[:id])
    category.update(name: params[:name])
    category.to_json
  end

  delete '/categories/:id' do
    category = Category.find(params[:id])
    category.destroy
    status 204
  end

  get '/products' do
    products = Product.all
    products.to_json
  end

  get '/products/:id' do
    product = Product.find(params[:id])
    product.to_json
  end

  post '/products' do
    product = Product.create(name: params[:name], description: params[:description], price: params[:price], quantity: params[:quantity], category_id: params[:category_id])
    product.to_json
  end

  put '/products/:id' do
    product = Product.find(params[:id])
    product.update(name: params[:name], description: params[:description], price: params[:price], quantity: params[:quantity], category_id: params[:category_id])
    product.to_json
  end

  delete '/products/:id' do
    product = Product.find(params[:id])
    product.destroy
    status 204
  end

  get '/orders' do
    orders = Order.all
    orders.to_json
  end

  get '/orders/:id' do
    order = Order.find(params[:id])
    order.to_json
  end

  post '/orders' do
    order = Order.create(description: params[:description], customer_email: params[:customer_email], customer_name: params[:customer_name], total_amount: params[:total_amount])
    order.to_json
  end

  put '/orders/:id' do
    order = Order.find(params[:id])
    order.update(description: params[:description], customer_email: params[:customer_email], customer_name: params[:customer_name], total_amount: params[:total_amount])
    order.to_json
  end

  delete '/orders/:id' do
    order = Order.find(params[:id])
    order.destroy
    status 204
  end

  get '/order_items' do
    order_items = OrderItem.all
    order_items.to_json
  end

  get '/order_items/:id' do
    order_item = OrderItem.find(params[:id])
    order_item.to_json
  end

  post '/order_items' do
    order_item = OrderItem.create(order_id: params[:order_id], product_id: params[:product_id], quantity: params[:quantity])
    order_item.to_json
  end

  put '/order_items/:id' do
    order_item = OrderItem.find(params[:id])
    order_item.update(order_id: params[:order_id], product_id: params[:product_id], quantity: params[:quantity])
    order_item.to_json
  end

  delete '/order_items/:id' do
    order_item = OrderItem.find(params[:id])
    order_item.destroy
    status 204
  end
end
