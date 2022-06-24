class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/coffees" do
    coffee = Coffee.all
    coffee.to_json
  end

  post '/customers' do
    customer = Customer.create(
      name: params[:name],
      email: params[:email],
    )
    customer.to_json
  end

  patch '/coffees/:id' do
    coffee = Coffee.find(params[:id])
    coffee.update(stock: params[:stock])
    coffee.to_json
  end

  delete '/coffees/:id' do
    coffee = Coffee.find(params[:id])
    coffee.destroy
    coffee.to_json
  end

end
