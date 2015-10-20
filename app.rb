require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:jabbr.sqlite3"

require './models'
enable :sessions



# def current_user
# 	if session[:session_user_id]
# 		@current_user = User.find(session[:session_user_id])
# 	end	
# end	



get '/' do
	if session[:session_user_id]
		@allUsers = User.all
		erb :home
	else
		erb :not_logged_in
	end
end
get '/name' do
	erb :name
end
get '/login_form' do
erb :login_form
end
post '/signin' do
	@user = User.where(username: params[:username]).first
	if params[:username].blank?
		redirect '/services'
	end

	if params[:password].blank?
		redirect '/services'		
	end

	if @user == nil
		redirect '/signup_required'
	end
	if @user.password != params[:password] 
		redirect '/failed_login'
	else
		#set session and success message here
		session[:session_user_id] = @user.id
		session[:session_username] = @user.username
		redirect '/'
	end
 
end
get '/signup' do
	erb :signup
end
post '/newsignin' do
	# session[:password] = params[:data]
	erb :newsignin
end
get '/failed_login' do
	erb :failed_login
end
get '/signup_required' do
	erb :signup_required
end
get '/logout' do
	session.clear
	redirect '/'
end
get '/settings' do
	erb :settings
end
get '/myprofile' do
	@userToFollow = params[:user_to_follow_id]
	@followers = User.find(session[:session_user_id]).followers
	@following = User.find(session[:session_user_id]).following
	erb :myprofile
end
get '/not_logged_in' do
	erb :not_logged_in
end















