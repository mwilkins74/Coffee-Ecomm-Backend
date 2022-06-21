class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/coffees" do
    coffee = Coffee.all
    coffee.to_json
  end

  delete '/coffees/:id' do
    coffee = Coffee.find(params[:id])
    coffee.destroy
    coffee.to_json
  end

end
