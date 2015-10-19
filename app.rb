require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:micro4.sqlite3"

require './models'

get '/' do
	erb :home
end
get '/about' do
	erb :about
end
get '/products' do
	erb :products
end
get '/services' do
	erb :services
end
get '/name' do
	erb :name
end
get '/form' do
	erb :form
end
post '/signin' do
	erb :signin
end
