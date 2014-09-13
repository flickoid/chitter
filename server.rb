require 'sinatra'
require 'data_mapper'
require './lib/peep'
require './lib/user'
require_relative 'app/helpers/application'
require_relative 'app/data_mapper_setup'

enable :sessions
set :session_secret, 'super secret'

get '/' do
  @peeps = Peep.all
  erb :index
end

get '/users/new' do
  erb :"users/new"
end

post '/users' do
  user = User.create(:name => params[:name],
              :username => params[:username],
              :email => params[:email],
              :password => params[:password])
  session[:user_id] = user.id
  redirect to('/')
end