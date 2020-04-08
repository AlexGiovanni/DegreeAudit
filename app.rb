require 'rubygems'
require "sinatra"
require 'sinatra/flash'
#require_relative "authentication.rb"


# authenticate! will make sure that the user is signed in, if they are not they will be redirected to the login page
# if the user is signed in, current_user will refer to the signed in user object.
# if they are not signed in, current_user will be nil
set :public_folder, 'views'

get "/" do
  
	erb :index
end

post '/register' do
	redirect "/dashboard"
  end

get "/dashboard" do
  
	erb :dashboard
end

